#!/bin/bash

./FES_from_Reweighting.py --colvar COLVAR --cv cyl.z --sigma 0.05 --temp 300 --stride 20000
python funnel_freeE.py
