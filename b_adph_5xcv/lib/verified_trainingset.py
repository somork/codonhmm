# verified_trainingset.py
# S/ren M/rk

# program for generating verified training data using ptt and gbk as
# input
# outputs verified genes in .dat format and in .ptt format

# example command:
# python ~/code/gbk_to_v_dat.py ../data/NC_000913_2.gbk 


import sys
import re
import operator

input=open(sys.argv[1]) 
gbk_file=input.read()
input.close()

######### Sections:
number_p=re.compile('[0123456789]+')

feature_split=gbk_file.split('FEATURE')

gbk_file='deleted'

origin_split=feature_split[1].split('ORIGIN')

intro=feature_split[0]

features=origin_split[0]

genes=features.split('     gene            ')

info_p=re.compile('\".+\"')

info_list_2=info_p.findall(genes[0])

refs=intro.split('REFERENCE')

intro=refs[0].split('\n')

####### PRINT:
print '%s organism:%s'%('%',info_list_2[0])
print '%s strain:%s'%('%',info_list_2[2])
print '%s sub_strain:%s'%('%',info_list_2[3])
print '%s db_xref:%s'%('%',info_list_2[4])
print '%s version: %s'%('%',intro[3][12:])

intro='deleted'
features='deleted'
info_list_2='deleted'
refs='deleted'
intro='deleted'

######## Genome str:
genome_str=origin_split[1]
genome_str=genome_str.replace('\n','')
genome_str=genome_str.replace(' ','')
genome_str=genome_str.replace('1','')
genome_str=genome_str.replace('2','')
genome_str=genome_str.replace('3','')
genome_str=genome_str.replace('4','')
genome_str=genome_str.replace('5','')
genome_str=genome_str.replace('6','')
genome_str=genome_str.replace('7','')
genome_str=genome_str.replace('8','')
genome_str=genome_str.replace('9','')
genome_str=genome_str.replace('0','')
genome_str=genome_str.replace('//','')

origin_split='deleted'

############ Delimit:

fragment_begin=0
fragment_end=len(genome_str)

######## annotation stuff 

num_p=re.compile('[0123456789]+')
delim_p=re.compile('[0123456789]+\.\.[0123456789]+')

gene_list=[]
for e in genes[1:]:
	gene_list.append(e.split('\n                     '))

gene_p=re.compile('/gene=".+"')
product_p=re.compile('/product="[^"]+')
codon_p=re.compile('/codon_start=\d+')
transl_p=re.compile('/transl_table=\d+')


#print "Test:"
print '%s # of genes:%s'%('%',len(gene_list))


annot=[]

for e in gene_list:
        name=e[1].split('"')[1]
        start=num_p.findall(e[0].split('..')[0])[0]
        stop=num_p.findall(e[0].split('..')[1])[0]
        if 'complement' in e[0]:
		strand='-'
	else:
		strand='+'
	if strand=='+':
		frame=((int(start)-1)%3)+1
	else:
		frame=((int(start)-1)%3)+4
	length=int(stop)-(int(start)-1)
	mod=length%3
	product=product_p.findall(str(e))
	codon=codon_p.findall(str(e))
	transl=transl_p.findall(str(e))
	if 'CDS' in str(e):
		annot.append((int(start)-1,int(stop),name,strand,frame,length,mod,'mRNA',product,codon,transl,genome_str[int(start)-1:int(start)+2],genome_str[int(stop)-3:int(stop)]))


#print 'Test:'
print '%s # of protein coding genes:%s'%('%',len(annot))

##########Getting proteins:

mRNAs_plus=[]
mRNAs_minus=[]
predicted=[]
predicted_protein=[]
predicted_named=[]
conserved=[]
conserved_protein=[]
conserved_named=[]	
spurious=[]
non_predicted=[]
verified=[]
checked=[]
bad=[]

for e in annot:
	if e[3]=='+':
		mRNAs_plus.append(e)
	if e[3]=='-':
		mRNAs_minus.append(e)

######### checked::

start_plus=[]
start_minus=[]
stop=[]
mod3=[]
codon_1=[]

for e in mRNAs_plus:
        if e[11]=='atg':
                start_plus.append(e)
        #elif e[11]=='ctg':
        #        start_plus.append(e)
        elif e[11]=='gtg':
                start_plus.append(e)
        elif e[11]=='ttg':
                start_plus.append(e)
        else:
                bad.append(e)
for e in mRNAs_minus:
        if e[11]=='tta':
                start_minus.append(e)
        elif e[11]=='cta':
                start_minus.append(e)
        elif e[11]=='tca':
                start_minus.append(e)
        else:
                bad.append(e)
for e in start_plus:
        if e[12]=='taa':
                stop.append(e)     
        elif e[12]=='tag':
                stop.append(e)     
        elif e[12]=='tga':
                stop.append(e)     
        else:
                bad.append(e)
for e in start_minus:
        if e[12]=='caa':
                stop.append(e)
        elif e[12]=='cac':
                stop.append(e)
        #elif e[12]=='cag':
        #        stop.append(e)
        elif e[12]=='cat':
                stop.append(e)
        else:bad.append(e)

for e in stop:
        if int(e[6])==0:
                mod3.append(e)
        else:
                bad.append(e)
for e in mod3:
        if '=1' in str(e[9]):
                codon_1.append(e)
        else: 
                bad.append(e)
for e in codon_1:
        if '=11' in str(e[10]):
                checked.append(e)
        else:
                bad.append(e)

for e in checked:
	if 'predicted' in str(e[8]):
		predicted.append(e)
	elif 'conserved' in str(e[8]):
		conserved.append(e)
	elif 'putative' in str(e[8]):
		spurious.append(e)
	elif 'spurious' in str(e[8]):
		spurious.append(e)
	else:
		verified.append(e)



#################### not included:

included=0
not_included=[]
for e in annot:
        if e in verified:
                included+=1
        else:
                not_included.append(e)

print '%s # of genes not included:%s'%('%',len(not_included))
print '%s Not included genes:'%('%')

for e in not_included:
        print '%s %s pos %s..%s %s'%('%',e[2],e[0],e[1],e[3])

########## reverse complement

def rc(DNA):
        DNA=DNA[::-1]
        DNA=DNA.replace('a','T')
        DNA=DNA.replace('c','G')
        DNA=DNA.replace('g','C')
        DNA=DNA.replace('t','A')
        return DNA.lower()       



########### output:

print '%s Data:'%('%')

print '%s %s verified mRNAs'%('%',len(verified))

for e in verified:
        print '%s pos %s..%s, frame: %s, strand: %s'%('%',e[0]+1,e[1]+1,e[4],e[3])
        if e[3]=='+':
                seq=genome_str[e[0]]
                for x in genome_str[e[0]+1:e[1]]:
                        seq+=','+x
                print 'model([%s]).'%seq
        if e[3]=='-':
                w=rc(genome_str[e[0]:e[1]])
                seq=w[0]
                for x in w[1:]:
                        seq+=','+x
                print 'model([%s]).'%seq


