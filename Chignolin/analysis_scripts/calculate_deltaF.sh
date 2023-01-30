#!/bin/bash

./FES_from_Reweighting.py --colvar COLVAR --cv hlda --sigma 0.05 --deltaFat 1.0 --temp 340 --stride 50000
./deltaF.sh
