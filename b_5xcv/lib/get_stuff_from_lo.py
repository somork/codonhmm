# get_stuff_from_lo.py
# S/ren M/rk
# 110913

# small program for outputting data strings from .lo like ROC or pos/neg log odds to R

#input:
# 1: .lo file from log_odds.py
# 2: mode={info,mcc,tpr,fpr,plo,nlo)

######################
import sys

input=open(sys.argv[1])
in_str=input.read()
input.close()

mode=sys.argv[2]

#info=in_str.split('Predictions:')[0]
#pest=in_str.split('Predictions:')[1]

#FP=pest.split('Genefinder Evasive (False Negatives):')[0]        
#rest=pest.split('Genefinder Evasive (False Negatives):')[1]        

#FN=rest.split('Corroborated Genes (True Positives):')[0]
#pest=rest.split('Corroborated Genes (True Positives):')[1]

info=in_str.split('MCCs:')[0]
rest=in_str.split('MCCs:')[1]

MCC=rest.split('TPR-FPR:')[0]
pest=rest.split('TPR-FPR:')[1]

ROC=pest.split('TPR:')[0]
rest=pest.split('TPR:')[1]

TPR=rest.split('FPR:')[0]
pest=rest.split('FPR:')[1]

FPR=pest.split('Log Odds Positive Set:')[0]
rest=pest.split('Log Odds Positive Set:')[1]

PLO=rest.split('Log Odds Negative Set:')[0]
NLO=rest.split('Log Odds Negative Set:')[1]

if mode=='info':
        print info
#if mode=='fp':
#        print info.split('CC')[0]
#        print FP
#if mode=='fn':
#        print info.split('CC')[0]
#        print 'Genefinder Evasive (False Negatives):'
#        print FN
#if mode=='tp':
#        print info.split('CC')[0]
#        print 'Corroborated Genes (True Positives):'
#        print TP
if mode=='mcc':
        print MCC
if mode=='roc':
        print ROC
if mode=='tpr':
        print TPR
if mode=='fpr':
        print FPR
if mode=='plo':
        print PLO
if mode=='nlo':
        print NLO
        

       

       



       









