# make_make_scripts.py
# S/ren M/rk


#makes:
#./training_data.sh
#./cross_validation_data.sh
#./make_cv_experiments.sh
#./make_decode_experiments.sh
#./make_log_odds.sh
#./make_get_stuff_from_lo.sh


############

import sys

input=open(sys.argv[1])
training_in=input.read() 
input.close()

input=open(sys.argv[2])
cross_validation_in=input.read() 
input.close()


print '# make_scripts.py'
print '# S/ren M/rk'
print 
print 'import sys'
print 
print 'genome_name=sys.argv[1]'
print 'genome_num=genome_name.split(\'_\')[1]'
print

##################### training_data.sh:

print '############## make made_scripts/training_data.sh'
print 
print 'training_data = open(\'../made_scripts/training_data.sh\', \'w\')'

for e in training_in.split('\n'):
        if len(e)>0:
                if '000964' in e:
                        print 'string=\'%s\'.replace(\'000964\',genome_num)'%e
                else:
                         print 'string=\'%s\''%e
                print 'training_data.write(string)'
                print 'training_data.write(\'\\n\')'

print
print 'training_data.close()'

#######################

##################### cross_validation_data.sh:

print '############## make made_scripts/cross_validation_data.sh'
print 
print 'cross_validation_data = open(\'../made_scripts/cross_validation_data.sh\', \'w\')'

for e in cross_validation_in.split('\n'):
        if len(e)>0:
                print 'string=\'%s\'.replace(\'000964\',genome_num)'%e
                print 'cross_validation_data.write(string)'
                print 'cross_validation_data.write(\'\\n\')'

print
print 'cross_validation_data.close()'

############








