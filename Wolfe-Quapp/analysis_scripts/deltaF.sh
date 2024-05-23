#!/bin/bash

rm deltaF.dat
touch deltaF.dat

./FES_from_Reweighting.py --colvar ../COLVAR --cv p.y --kt 1 --sigma 0.05 --stride 200 --deltaFat 0.0

for i in {1..1000}
do
        sed -n '4s/.\{14\}//p' fes-rew_$i.dat >> deltaF.dat
done
