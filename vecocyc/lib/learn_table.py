import sys

input=open(sys.argv[1]) 
res_in=input.read()
input.close()

res_l=res_in.split('loading::')

gs=[]
sw=[]
swi=[]
vfe=[]
tlt=[]
ts=[]
model=[]

for e in res_l[1:]:
        model.append(e.split('.psm')[0])
        gs.append(e.split('size: ')[1].split('\n')[0])
        sw.append(e.split('switches: ')[1].split('\n')[0])
        swi.append(e.split('instances: ')[1].split('\n')[0])
        vfe.append(e.split('energy: ')[1].split('\n')[0])  
        tlt.append(e.split('learning time: ')[1].split('seconds')[0])
        ts.append(e.split('space used: ')[1].split('bytes')[0])

for i in range(len(model)):
        print '%s & %s & %s x$10^6$ & %s x$10^6$ & %s \\\\'%(model[i],int(swi[i])-int(sw[i]),round(float(vfe[i])/1000000,3),round(float(gs[i])/1000000,3),int(round(float(tlt[i])/60)))

# param # vfe x $10^6$ gs $10^6$ tlt /60


