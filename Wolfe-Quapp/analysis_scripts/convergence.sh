#!/bin/bash

for i in {1..5}
do
	cd run$i
	rm -r convergence
	cp -r ../convergence .
	cd convergence
	./deltaF.sh
	cd ../..
done
