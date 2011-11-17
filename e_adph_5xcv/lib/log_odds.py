# log_odds_confusion.py
# S/ren M/rk
# 100713

# program for extracting Confusion matrices from vit files and golden
# standards...

# runs on ~70.000 URFs in about ? minutes ?...
# on concatenation of 6x viterbi that takes 5-10 minuts
# that takes days to train using learn
# and 5-10 minuts to trains using viterbi_learn by CTH... but without stats then......

# idurfs takes ? for E.coli genome...
# gbk_to_frames (dat soon) takes ? for E.coli genome

### nb: use log_odds_metrics.py to get nifty info and things for plots...

# takes: 
# 1: .vit file from model
# 2: .vit file from null
# 3: .ptt file as golden standard
# 4: .dat file from decoding

# outputs:
# info
# all possible confusion matrices given golden standard

################### getting files: 

import sys
import re
import operator
import math

input=open(sys.argv[1]) 
model_in=input.read()
input.close()

input=open(sys.argv[2]) 
null_in=input.read()
input.close()

input=open(sys.argv[3]) 
ptt_in=input.read()
input.close()

input=open(sys.argv[4]) 
dat_in=input.read()
input.close()


########### getting info:

name_p=re.compile('loading::.+psm')
model_name=name_p.findall(model_in)[0][8:]
null_name=name_p.findall(null_in)[0][8:]


######### patterns:

num_p=re.compile('[0123456789\-\.]+')
pos_p=re.compile('[^:][0123456789]+\.\.[0123456789]+')
strand_p=re.compile('strand: .')
ptt_p=re.compile('[0123456789]+\.\.[0123456789]+\s[+-]')

pos=pos_p.findall(dat_in)
strand=strand_p.findall(dat_in)
model_num=num_p.findall(model_in.split('[')[1].split(']')[0])
null_num=num_p.findall(null_in.split('[')[1].split(']')[0])
ptt=ptt_p.findall(ptt_in)

############ model & null: 

model_nums_0=[]
for e in model_in.split('[')[1::1]:
        model_nums_0.append(e)
model_nums_1=[]
for e in model_nums_0:
        model_nums_1.append(e.split(']')[0])
model_nums_2=[]
for e in model_nums_1:
        model_nums_2.append(num_p.findall(e))
model_num=[]
for j in model_nums_2:
        for k in j:
                model_num.append(k)

null_nums_0=[]
for e in null_in.split('[')[1::1]:
        null_nums_0.append(e)
null_nums_1=[]
for e in null_nums_0:
        null_nums_1.append(e.split(']')[0])
null_nums_2=[]
for e in null_nums_1:
        null_nums_2.append(num_p.findall(e))
null_num=[]
for j in null_nums_2:
        for k in j:
                null_num.append(k)


pos_split=[]
for e in pos:
        pos_split.append((e.split('..')[0],e.split('..')[1]))

########### ptt:
ptt_pre=[]
for e in ptt:
        ptt_pre.append((int(e.split('/t')[0].split('..')[0]),int(e.split('..')[1].split('\t')[0]),e.split('\t')[1],int(e.split('/t')[0].split('..')[0])%3))

ptt_pre_2=[]
for e in ptt_pre:
        if e[2]=='+':
                ptt_pre_2.append(e)
        elif e[2]=='-':
                ptt_pre_2.append((e[0],e[1],e[2],e[3]+3))


frame_id_p=re.compile('nts in frame: .')
frame_id=frame_id_p.findall(dat_in.split('data:')[0])

ptt=ptt_pre_2

ptt_plus_stop=[]
ptt_minus_stop=[]
for i in range(len(ptt)):
        if ptt[i][2]=='+':
                ptt_plus_stop.append(ptt[i][1])
        else:
                ptt_minus_stop.append(ptt[i][0])

#########
#print len(pos_split)
#print len(strand)
#print len(model_num)
#print len(null_num)

########### dat:
dat=[]
for i in range(len(pos_split)):
        dat.append((int(pos_split[i][0]),int(pos_split[i][1]),strand[i][8],float(model_num[i])-float(null_num[i])))

############## Pos and Negs : 

P_plus=[]
P_minus=[]
N_plus=[]
N_minus=[]

for i in range(len(dat)):
        if dat[i][2]=='+':
                if dat[i][1] in ptt_plus_stop:
                        P_plus.append(dat[i])
                else:
                        N_plus.append(dat[i])
        else:
                if dat[i][0] in ptt_minus_stop:
                        P_minus.append(dat[i])
                else:
                        N_minus.append(dat[i])

N=N_plus+N_minus
P=P_plus+P_minus

P.sort(key=operator.itemgetter(3))
N.sort(key=operator.itemgetter(3))


############ Heavy iteration:

dat_sort=dat
dat_sort.sort(key=operator.itemgetter(3))

datdict={}
for i in range(len(dat_sort)):
        k=str(dat_sort[i][3])
        datdict[k]=i 

CMs=[]

######### test:
#R=[]
#R.append(P[0])
#R.append(P[1000])
#R.append(P[2000])
#R.append(P[3000])
#R.append(P[4000])
#R.append(P[-1])


#for e in R:
for e in P:
        x=str(e[3])
        y=datdict[x]
        l=dat_sort[y:]
        tp=0
        fp=0
        for j in l:
                if j in P:
                        tp=tp+1
                else:
                        fp=fp+1    
        fn=len(P)-tp
        tn=len(N)-fp
        CMs.append((tp,fp,fn,tn,float(e[3])))

bad_tp=[]
bad_fp=[]
bad_fn=[]
bad_tn=[]

CCs=[]
max_diff_tpr_fpr=[]
FPFNs=[]
FPFN_TPs=[]

for e in CMs:
        max_diff_tpr_fpr.append(((float(e[0])/float(e[0]+e[2]))-(float(e[1])/float(e[1]+e[3])),e[0],e[1],e[2],e[3],e[4]))
        if e[0]==0:
                bad_tp.append(e)
        elif e[1]==0:
                bad_fp.append(e)
        elif e[2]==0:
                bad_fn.append(e)
        elif e[3]==0:
                bad_tn.append(e)
        else:
                CCs.append((float((e[0]*e[3])-(e[2]*e[1]))/float(math.sqrt((e[0]+e[2])*(e[3]+e[1])*(e[0]+e[1])*(e[3]+e[2]))),e[0],e[1],e[2],e[3],e[4]))     
                FPFNs.append((e[1]+e[2],e[0],e[1],e[2],e[3],e[4]))     
                FPFN_TPs.append((float(e[1]+e[2])/float(e[0]),e[0],e[1],e[2],e[3],e[4]))     


CCs_unsort=CCs
max_diff_tpr_fpr_unsort=max_diff_tpr_fpr

CCs.sort(key=operator.itemgetter(0))
max_diff_tpr_fpr.sort(key=operator.itemgetter(0))

FPNS_unsort=FPFNs
FPFN_TPs_unsort=FPFN_TPs

FPFNs.sort(key=operator.itemgetter(0))
FPFN_TPs.sort(key=operator.itemgetter(0))


# CC=((tp*tn)- (fn*fp))/math.sqrt((tp+fn)*(tn+fp)*(tp+fp)*(tn+fn))

############# PRINT:

print 'Performance Metrics and Predictions'
print 'Generated using log_odds.py'
print 'Model: %s'%model_name[1:]
print 'Null model: %s'%null_name[1:]
print 'Data generated %s'%dat_in.split('\n')[0][1:]
print dat_in.split('\n')[1][2:]
print dat_in.split('\n')[2][2:]
print dat_in.split('\n')[3][2:]
print dat_in.split('\n')[4][2:]
print dat_in.split('\n')[5][2:]
print dat_in.split('\n')[6][2:]
print '%s ORFs in Golden Standard'%len(ptt_pre)
print '%s Unique stop codons in Golden Standard'%len(P)
print ''
print ''

##### getting and sorting optimizing metrics:

## get optimal mn(FP+FN) log_odds values:
best=FPFNs[0]

tp=int(best[1])
fp=int(best[2])
fn=int(best[3])
tn=int(best[4])

print 'min(FP+FN) optimized Confusion Matrix:'
print 'True Positives: %s'%tp
print 'False Positives (Type I): %s'%fp
print 'False Negatives (Type II): %s'%fn
print 'True Negatives: %s'%tn
print ''
print 'Optimal log odds threshold w.r.t min(FP+FN): %s'%best[5]
print ''
print 'Performance Metrics:'
print 'Match Coefficient (accuracy):%f'%(float(tp+tn)/float(tp+fp+fn+tn))
TPR=float(tp)/float(tp+fn)
print 'True Positive Rate (sensitivity/recall): %f'%TPR
print 'Positive Predictive Value (precision/"guigo specificity"]:%f'%(float(tp)/float(tp+fp))
print 'True Negative Rate: (Specificity):%f'%(float(tn)/float(fp+tn))
FPR=float(fp)/float(fp+tn)
print 'False Positive Rate: %s'%FPR
print 'Negative Predictive Value: %s'%(float(tn)/float(tn+fn))
print 'False Discovery Rate: %s'%(float(fp)/float(fp+tp))
print 'ROC value: %s'%(FPR/TPR)
print 'ROC product %s'%(TPR*FPR)
print ''
print ''


## get optimal mn((FP+FN)/TP) log_odds values:
best=FPFN_TPs[0]

tp=int(best[1])
fp=int(best[2])
fn=int(best[3])
tn=int(best[4])

print 'min((FP+FN)/TP) optimized Confusion Matrix:'
print 'True Positives: %s'%tp
print 'False Positives (Type I): %s'%fp
print 'False Negatives (Type II): %s'%fn
print 'True Negatives: %s'%tn
print ''
print 'Optimal log odds threshold w.r.t min(FP+FN): %s'%best[5]
print ''
print 'Performance Metrics:'
print 'Match Coefficient (accuracy):%f'%(float(tp+tn)/float(tp+fp+fn+tn))

######print confusion matrix from opt  MCC:

## get optimal CC log_odds values:
best=CCs[-1]

tp=int(best[1])
fp=int(best[2])
fn=int(best[3])
tn=int(best[4])

print 'MCC optimized Confusion Matrix:'
print 'True Positives: %s'%tp
print 'False Positives (Type I): %s'%fp
print 'False Negatives (Type II): %s'%fn
print 'True Negatives: %s'%tn
print ''
print 'Optimal log odds threshold w.r.t MCC: %s'%best[5]
print ''
print 'Performance Metrics:'
print 'Match Coefficient: %f'%(float(tp+tn)/float(tp+fp+fn+tn))
print 'Mathew\'s Correlation Coefficient: %f'%best[0]
print 'TPR-FPR:%f '%((float(best[1])/float(best[1]+best[3]))-(float(best[2])/float(best[2]+best[4])))
print 'True Positive Rate: %f'%(float(tp)/float(tp+fn))
print 'False Positive Rate: %f'%(float(fp)/float(fp+tn))
print 'Positive Predictive Value: %f'%(float(tp)/float(tp+fp))
print 'True Negative Rate: %f'%(float(tn)/float(fp+tn))
print 'Negative Predictive Value: %f'%(float(tn)/float(tn+fn))
print 'False Positive Discovery Rate: %f'%(float(fp)/float(fp+tp))
print ''
print ''



######print confusion matrix from opt diff_tpr_fpr:

## get optimal diff_tpr_fpr log_odds values:
best=max_diff_tpr_fpr[-1]

tp=int(best[1])
fp=int(best[2])
fn=int(best[3])
tn=int(best[4])

print 'TPR-FPR optimized Confusion Matrix:'
print 'True Positives: %s'%tp
print 'False Positives (Type I): %s'%fp
print 'False Negatives (Type II): %s'%fn
print 'True Negatives: %s'%tn
print ''
print 'Optimal log odds threshold w.r.t TPR-FPR: %s'%best[5]
print ''
print 'Performance Metrics:'
print 'Match Coefficient: %f'%(float(tp+tn)/float(tp+fp+fn+tn))
MCC=float((best[1]*best[4])-(best[3]*best[2]))/float(math.sqrt((best[1]+best[3])*(best[4]+best[2])*(best[1]+best[2])*(best[4]+best[3])))
print 'Mathew\'s Correlation Coefficient: %f'%MCC
print 'ROC: %f'%best[0] 
print 'True Positive Rate: %f'%(float(tp)/float(tp+fn))
print 'False Positive Rate: %f'%(float(fp)/float(fp+tn))
print 'Positive Predictive Value: %f'%(float(tp)/float(tp+fp))
print 'True Negative Rate: %f'%(float(tn)/float(fp+tn))
print 'Negative Predictive Value: %f'%(float(tn)/float(tn+fn))
print 'False Positive Discovery Rate: %f'%(float(fp)/float(fp+tp))
print ''
print ''

print 'Notes:'
print 'MC=((tp+tn)/(tp+fp+fn+tn)) "Accuracy"'
print 'MCC=((tp*tn)- (fn*fp))/sqrt((tp+fn)*(tn+fp)*(tp+fp)*(tn+fn))'
print 'MCC: Pearson product-moment correlation coefficient in the particular case of two binary variables (coding/noncoding) and Specificity corrected as pr.  bursett&guigo'
print 'TPR = tp/(tp+fn), "Sensitivity"/"Recall"'
print 'FPR = fp/(fp+tn)'
print 'PPV= tp/(tp+fp) "Precision"/"BursettGuigo Specificity"'
print 'TNR=tn/(fp+tn) "Specificity"'
print 'NPV = tn/(tn+fn)'
print 'FDR = fp/fp+tp'
print ''

############# printing metrics curves:

CC_str=str(CCs_unsort[0][0])

for e in CCs_unsort[1:]:
        CC_str+=','+str(e[0])

print 'MCCs:'
print CC_str
print ''
print ''

print 'TPR-FPR:'
TPRFPR_str=str(max_diff_tpr_fpr_unsort[0][0])
for e in max_diff_tpr_fpr_unsort[1:]:
        TPRFPR_str+=','+str(e[0])
print TPRFPR_str
print ''

print 'TPR:'
TPR_str=str(float(CMs[0][0])/float(CMs[0][0]+CMs[0][2]))
for e in CMs[1:]:
        TPR_str+=','+str(float(e[0])/float(e[0]+e[2]))
print TPR_str

print 'FPR:'
FPR_str=str(float(CMs[0][1])/float(CMs[0][1]+CMs[0][3]))
for e in CMs[1:]:
        FPR_str+=','+str(float(e[1])/float(e[1]+e[3]))
print FPR_str
print ''
print ''

######### printing log odds of positive and negatives:

P_str=str(P[0][3])
for e in P[1:]:
        P_str+=','+str(e[3])

N_str=str(N[0][3])
for e in N[1:]:
        N_str+=','+str(e[3])

print 'Log Odds Positive Set:'
print P_str
print ''
print ''

print 'Log Odds Negative Set:'
print N_str
print ''
print ''



