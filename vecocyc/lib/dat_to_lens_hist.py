# dat_to_lens_hist.py
# S/ren M/rk
# 100715

import sys
import re
import operator

input=open(sys.argv[1])
sample=input.read()
input.close

input=open(sys.argv[2])
dat=input.read()
input.close

space=sys.argv[3]

mode=sys.argv[4]

pattern=re.compile('model\(\[[,acgt]+')

list=pattern.findall(sample)

list1=[]

for e in list:
        list1.append(e.replace(',',''))

list2=[]
for e in list1:
        list2.append((int(len(e))-7,'x'))

list2.sort(key=operator.itemgetter(0))

x_list=pattern.findall(dat)

x_list1=[]

for e in x_list:
        x_list1.append(e.replace(',',''))

x_list2=[]
for e in x_list1:
        x_list2.append((int(len(e))-7,'x'))

x_list2.sort(key=operator.itemgetter(0))

max_list=x_list2[-1][0]


hist={}
for e in range(max_list)[::int(space)]:
        hist[e]=[]
        for j in list2:
                 if j[0]>=e:
                        if j[0]<e+int(space):
                                hist[e].append(j[0])

for e in sorted(hist.keys()):
        if mode=='x':
                print e
        else:
                print len(hist[e])
