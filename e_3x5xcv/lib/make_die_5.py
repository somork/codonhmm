# make_die_5.py
# S/ren M/rk

import sys

input=open(sys.argv[1]) 
dat=input.read()
input.close()

samples=dat.split('Data:')[1].split('\n')[1].split(' ')[1]

die_5 = open('../lib/die_5.psm', 'w')

die_5.write('% die_5.psm')
die_5.write('\n')
die_5.write('% S/ren M/rk')
die_5.write('\n')
die_5.write('% 5-sided die for generating random sequence for cross-validation set')
die_5.write('\n')
die_5.write('% annotations')
die_5.write('\n')
die_5.write('')
die_5.write('\n')
die_5.write('get:-') 
die_5.write('\n')
die_5.write('        get_samples(%s,model(X),S),'%samples)
die_5.write('\n')
die_5.write('        writeln(S).')
die_5.write('\n')
die_5.write('')
die_5.write('\n')
die_5.write('values(die,[1,2,3,4,5]).')
die_5.write('\n')
die_5.write('')
die_5.write('\n')
die_5.write('model(X):-')
die_5.write('\n')
die_5.write('        msw(die,X).')

die_5.close()

