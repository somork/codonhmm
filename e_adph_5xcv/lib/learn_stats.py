import sys

input=open(sys.argv[1]) 
res_in=input.read()
input.close()

type=sys.argv[2]

res_l=res_in.split('loading::')

gs=[]
sw=[]
swi=[]
vfe=[]
tlt=[]
ts=[]


for e in res_l[1:]:
        gs.append(e.split('size: ')[1].split('\n')[0])
        sw.append(e.split('switches: ')[1].split('\n')[0])
        swi.append(e.split('instances: ')[1].split('\n')[0])
        vfe.append(e.split('energy: ')[1].split('\n')[0])  
        tlt.append(e.split('learning time: ')[1].split('seconds')[0])
        ts.append(e.split('space used: ')[1].split('bytes')[0])
 
if type=='gs':
        print gs[0]
        for e in gs[1:]:
                print ','
                print e
if type=='vfe':
        str=vfe[0]
        for e in vfe[1:]:
                str+=','+e
      	print str



