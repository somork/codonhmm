# auc.py
# S/ren M/rk

# getting ROC Area Under Curve from trp and fpr


import sys

input=open(sys.argv[1]) 
tpr_in=input.read()
input.close()

input=open(sys.argv[2]) 
fpr_in=input.read()
input.close()

tpr_num=tpr_in.split('\n')[1]
fpr_num=fpr_in.split('\n')[1]

tpr=tpr_num.split(',')
fpr=fpr_num.split(',')

#print len(tpr)
#print len(fpr)

sum_roc=0

for i in range(len(tpr)):
	sum_roc+=float(tpr[i])-float(fpr[i])

auc=sum_roc/float(len(tpr))


##### approx AUC:

print auc+0.5

##### trapedeoizal:
tpr_i=[]
fpr_i=[]

for e in tpr[::-1]:
	tpr_i.append(e)

for e in fpr[::-1]:
	fpr_i.append(e)


#print tpr_i[0]
#print tpr_i[1]
#print tpr_i[-1]

#print fpr_i[0]
#print fpr_i[1]
#print fpr_i[-1]

a=0
for i in range(len(tpr_i)-1):
	x=float(fpr_i[i+1])-float(fpr_i[i])
	y=float(tpr_i[i+1])-float(tpr_i[i])
	a+=(x*y/2)+(x*float(tpr_i[i]))	

a+=(float(tpr_i[0])*float(fpr_i[0]))/2
a+=(((1-float(tpr[-1]))*(1-float(fpr_i[-1])))/2)+((1-float(fpr_i[-1]))*(float(tpr_i[-1])))

#print a


#### Confidence intervals:
# sample size
# sample mean
# variance
# standard deviation
# standard error
# confidence:

