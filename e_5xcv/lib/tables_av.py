# get_gbk_latex_tables.py
# S/ren M/rk

import sys
import math

input=open(sys.argv[1])
tmp=input.read()
input.close()

input=open(sys.argv[2])
auc_in=input.read()
input.close()

################ AUC:

auc_string=auc_in.replace(',\n','')

aa_auc=auc_string.split('\n')[0:5]
eco_auc=auc_string.split('\n')[5:10]
i3pmc_auc=auc_string.split('\n')[10:15]
mc5_auc=auc_string.split('\n')[15:20]
mm_auc=auc_string.split('\n')[20:25]

auc_l=[]
auc_l.append(aa_auc)
auc_l.append(eco_auc)
auc_l.append(i3pmc_auc)
auc_l.append(mc5_auc)
auc_l.append(mm_auc)



########## cv:

slices=tmp.split('Generated using')[1:]

aa=slices[0:5]
eco=slices[5:10]
i3pmc=slices[10:15]
mc5=slices[15:20]
mm=slices[20:25]

l=[]
l.append(aa)
l.append(eco)
l.append(i3pmc)
l.append(mc5)
l.append(mm)

############## get numbers lists:
nl=[]

for i in range(len(l)):
        model=l[i][0].split('odel: ')[1].split('_cv')[0] 
        f_l=[]
        for e in l[i]:
                x=e.split('TPR-FPR optimized Confusion Matrix')[1].split(': ')[1:11]    
                for k in x:
                        f_l.append(k.split('\n')[0])
        tp=f_l[0::10]
        fp=f_l[1::10]
        fn=f_l[2::10]
        tn=f_l[3::10]
        tpr=f_l[8::10]
        fpr=f_l[9::10]
        nl.append((model,tp,fp,fn,tn,tpr,fpr,auc_l[i]))

#################### getting averages:

fl=[]

for m in nl:
        av_sd_l=[]
        av_sd_l.append(m[0])
        for n in m[1:]: 
                sum=0
                for num in n:
                        sum+=float(num)
                av=sum/5
                dif_sum=0
                for num in n:
        		dif_sum+=((av-float(num))*(av-float(num)))
	        sd=math.sqrt(dif_sum/5)
	        av_sd_l.append((av,sd))

        fl.append(av_sd_l)

###### printing table entries:
print 'confusion matrices av cv +- 1 sd:'
print 'model & TP & FP & FN & TN \\\\'
 
for z in fl:
        print '%s & %s $\\pm$ %s & %s $\\pm$ %s & %s $\\pm$ %s & %s $\\pm$ %s'%(z[0],int(round(z[1][0])),int(round(z[1][1])),int(round(z[2][0])),int(round(z[2][1])),int(round(z[3][0])),int(round(z[3][1])),int(round(z[4][0])),int(round(z[4][1])))
print
print 'Performance metrics average cv +- 1 sd:'
print 'model & TPR & FPR & AUC  \\\\'
 
for z in fl:
        print '%s & %s $\\pm$ %s & %s $\\pm$ %s & %s $\\pm$ %s'%(z[0],round(z[5][0],3),round(z[5][1],3),round(z[6][0],3),round(z[6][1]),round(z[7][0],3),round(z[7][1],3))

       
