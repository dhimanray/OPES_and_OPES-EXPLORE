#!/bin/bash

./FES_from_Reweighting.py --colvar COLVAR --cv p.x --sigma 0.05 --deltaFat 0.0 --kt 1 --stride 400
./deltaF.sh
