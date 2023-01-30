#!/bin/bash

rm deltaF.dat
touch deltaF.dat

for i in {1..100}
do
        sed -n '4s/.\{14\}//p' fes-rew_$i.dat >> deltaF.dat
done
