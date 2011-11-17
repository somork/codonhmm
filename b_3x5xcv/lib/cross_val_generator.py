#cross_val_generator.py
# S/ren M/rk
# for 5 times cross validation


import sys
import re

input=open(sys.argv[1]) # dataset.dat
data_string=input.read() 
input.close()

input=open(sys.argv[2]) # random_sew
random_string=input.read() 
input.close()

### test
#print data_string[:10]
#print random_string[:10]

dat_pattern=re.compile('\%.pos.+')

model_pat=re.compile('model\(.+')

random_pat=re.compile('model\(.')

data_annot_list=dat_pattern.findall(data_string)
data_dat_list=model_pat.findall(data_string)
annot_list=random_pat.findall(random_string)

###test:
#print data_annot_list[0]
#print data_dat_list[0]
#print annot_list[0]

#print len(data_annot_list)
#print len(data_dat_list)
#print len(annot_list)

#print annot_list[0][6]

set_1=[]
set_2=[]
set_3=[]
set_4=[]
set_5=[]

for i in range(len(annot_list)):
        if annot_list[i][6]=='1':
                set_1.append((data_annot_list[i],data_dat_list[i]))
        elif annot_list[i][6]=='2':
                set_2.append((data_annot_list[i],data_dat_list[i]))
        elif annot_list[i][6]=='3':
                set_3.append((data_annot_list[i],data_dat_list[i]))
        elif annot_list[i][6]=='4':
                set_4.append((data_annot_list[i],data_dat_list[i]))
        elif annot_list[i][6]=='5':
                set_5.append((data_annot_list[i],data_dat_list[i]))

###test:
#print len(set_1)
#print len(set_2)
#print len(set_3)
#print len(set_4)
#print len(set_5)

#for e in set_1[0]:
#        print e

########### write training data files:
train_1 = open('../data/cv_train_1.dat', 'w')
train_1.write('% cross_validation_training_set_1:\n')
number_of_genes_string='%s number of genes in set: %s'%('%',len(set_1))
train_1.write(number_of_genes_string)
train_1.write('\n')
for e in set_1:
        train_1.write(e[0])
        train_1.write('\n')
        train_1.write(e[1])
        train_1.write('\n')
train_1.close()

train_2 = open('../data/cv_train_2.dat', 'w')
train_2.write('% cross_validation_training_set_2:\n')
number_of_genes_string='%s number of genes in set: %s'%('%',len(set_2))
train_2.write(number_of_genes_string)
train_2.write('\n')
for e in set_2:
        train_2.write(e[0])
        train_2.write('\n')
        train_2.write(e[1])
        train_2.write('\n')
train_2.close()

train_3 = open('../data/cv_train_3.dat', 'w')
train_3.write('% cross_validation_training_set_3:\n')
number_of_genes_string='%s number of genes in set: %s'%('%',len(set_3))
train_3.write(number_of_genes_string)
train_3.write('\n')
for e in set_3:
        train_3.write(e[0])
        train_3.write('\n')
        train_3.write(e[1])
        train_3.write('\n')
train_3.close()

train_4 = open('../data/cv_train_4.dat', 'w')
train_4.write('% cross_validation_training_set_4:\n')
number_of_genes_string='%s number of genes in set: %s'%('%',len(set_4))
train_4.write(number_of_genes_string)
train_4.write('\n')
for e in set_4:
        train_4.write(e[0])
        train_4.write('\n')
        train_4.write(e[1])
        train_4.write('\n')
train_4.close()

train_5 = open('../data/cv_train_5.dat', 'w')
train_5.write('% cross_validation_training_set_5:\n')
number_of_genes_string='%s number of genes in set: %s'%('%',len(set_5))
train_5.write(number_of_genes_string)
train_5.write('\n')
for e in set_5:
        train_5.write(e[0])
        train_5.write('\n')
        train_5.write(e[1])
        train_5.write('\n')
train_5.close()


