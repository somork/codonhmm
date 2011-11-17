# idurfs.py
# S/ren M/rk
# 100623

# program for getting all URFs of a genome over a thresshod lenght and
# outputting them in .dat format with gbk genome position...

# input: 
# arg1=minimum URF lenght
# arg2=frame(s)
# arg3=.gbk file

# example execution: (python idurfs.py 30 all ~/data/Escherichia_coli_K12/NC_000913.# gbk > ~/data/decode/k12_urfs_o_30.dat &)  

import sys
import re
import operator

def rc(DNA):
        DNA=DNA[::-1]
        DNA=DNA.replace('a','T')
        DNA=DNA.replace('c','G')
        DNA=DNA.replace('g','C')
        DNA=DNA.replace('t','A')
        return DNA.lower()       

min_len=sys.argv[1]
frame=sys.argv[2]

input=open(sys.argv[3]) 
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

####### ##print:
print '%s from idurfs.py'%('%')
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


################# test:
#genome_str='cccatgcggtaacatggcgtaacatgggctaacttacggcatcttagcgcatcttaggccatcc'

genome_str_2=genome_str[1:]+genome_str[0]
genome_str_3=genome_str_2[1:]+genome_str_2[0]

#print 'genome_strs:'
#print genome_str
#print genome_str_2
#print genome_str_3
#print ''

############### Frame_1:
frame_1=''
for i in range(len(genome_str))[::3]:
        frame_1+=genome_str[i:i+3]+','

frame_1=frame_1.replace('taa','yyy')
frame_1=frame_1.replace('tag','yyy')
frame_1=frame_1.replace('tga','yyy')
frame_1=frame_1.replace('atg','xxx')
frame_1=frame_1.replace('gtg','xxx')
frame_1=frame_1.replace('ttg','xxx')

frame_1=frame_1.replace(',','')

sts1=[]
for m in re.finditer(r"xxx[^y]+yyy", frame_1):
        sts1.append((m.start(),m.end(),genome_str[m.start():m.end()],1))

############### Frame_2:
frame_2=''
for i in range(len(genome_str_2))[::3]:
        frame_2+=genome_str_2[i:i+3]+','

frame_2=frame_2.replace('taa','yyy')
frame_2=frame_2.replace('tag','yyy')
frame_2=frame_2.replace('tga','yyy')
frame_2=frame_2.replace('atg','xxx')
frame_2=frame_2.replace('gtg','xxx')
frame_2=frame_2.replace('ttg','xxx')

frame_2=frame_2.replace(',','')

sts2=[]
for m in re.finditer(r"xxx[^y]+yyy", frame_2):
        sts2.append((m.start()+1,m.end()+1,genome_str[m.start()+1:m.end()+1],2))


############### Frame_3:
frame_3=''
for i in range(len(genome_str_3))[::3]:
        frame_3+=genome_str_3[i:i+3]+','

frame_3=frame_3.replace('taa','yyy')
frame_3=frame_3.replace('tag','yyy')
frame_3=frame_3.replace('tga','yyy')
frame_3=frame_3.replace('atg','xxx')
frame_3=frame_3.replace('gtg','xxx')
frame_3=frame_3.replace('ttg','xxx')

frame_3=frame_3.replace(',','')

sts3=[]
for m in re.finditer(r"xxx[^y]+yyy", frame_3):
        sts3.append((m.start()+2,m.end()+2,genome_str[m.start()+2:m.end()+2],3))



############### Frame_4:
frame_4=''
for i in range(len(genome_str))[::3]:
        frame_4+=genome_str[i:i+3]+','

frame_4=frame_4.replace('tta','xxx')
frame_4=frame_4.replace('tca','xxx')
frame_4=frame_4.replace('cta','xxx')
frame_4=frame_4.replace('cat','yyy')
frame_4=frame_4.replace('cac','yyy')
frame_4=frame_4.replace('caa','yyy')
frame_4=frame_4.replace(',','')

sts4=[]
for m in re.finditer(r"xxx[^x]+yyy", frame_4):
        sts4.append((m.start(),m.end(),genome_str[m.start():m.end()],4))

############### Frame_5:
frame_5=''
for i in range(len(genome_str_2))[::3]:
        frame_5+=genome_str_2[i:i+3]+','

frame_5=frame_5.replace('tta','xxx')
frame_5=frame_5.replace('tca','xxx')
frame_5=frame_5.replace('cta','xxx')
frame_5=frame_5.replace('cat','yyy')
frame_5=frame_5.replace('cac','yyy')
frame_5=frame_5.replace('caa','yyy')
frame_5=frame_5.replace(',','')

sts5=[]
for m in re.finditer(r"xxx[^x]+yyy", frame_5):
        sts5.append((m.start()+1,m.end()+1,genome_str[m.start()+1:m.end()+1],5))

############### Frame_6:
frame_6=''
for i in range(len(genome_str_3))[::3]:
        frame_6+=genome_str_3[i:i+3]+','

frame_6=frame_6.replace('tta','xxx')
frame_6=frame_6.replace('tca','xxx')
frame_6=frame_6.replace('cta','xxx')
frame_6=frame_6.replace('cat','yyy')
frame_6=frame_6.replace('cac','yyy')
frame_6=frame_6.replace('caa','yyy')
frame_6=frame_6.replace(',','')

sts6=[]
for m in re.finditer(r"xxx[^x]+yyy", frame_6):
        sts6.append((m.start()+2,m.end()+2,genome_str[m.start()+2:m.end()+2],6))


#print 'stss:'
#print sts1
#print sts2
#print sts3
#print sts4
#print sts5
#print sts6

sts=sts1+sts2+sts3+sts4+sts5+sts6

#sts.sort(key=operator.itemgetter(0))

sts_min=[]
for e in sts:
        if len(e[2])>int(min_len):
                sts_min.append(e)

print '%s %s URFs total'%('%',len(sts))

sts_min_frame=[]

if frame=='all':
        print '%s %s URFs over %s nts'%('%',len(sts_min),min_len)
        sts_min_frame=sts_min
else:
        for e in sts_min:
                if e[3]==int(frame):
                        sts_min_frame.append(e)
        print '%s %s URFs over %s nts in frame: %s:'%('%',len(sts_min_frame),min_len,frame)

print '%s data:'%('%')
for e in sts_min_frame:
        if e[3]<4:
                s=e[2][0]
                for f in e[2][1:]:
                        s+=','+f
                print '%s pos %s..%s frame: %s, strand: +'%('%',e[0]+1,e[1],e[3])
                print 'model([%s]).'%s
        else:
                r=rc(e[2])
                s=r[0]
                for f in r[1:]:
                        s+=','+f
                print '%s pos %s..%s frame: %s, strand: -'%('%',e[0]+1,e[1],e[3])
                print 'model([%s]).'%s
 

