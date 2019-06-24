#!/bin/bash

FILES='/home/kyle/glider_working/Sage_Data/sg543_processed/*.nc'
echo $FILES
for f in $FILES
do
	echo $f
	ncks --jsn -M $f | jq '.dimensions'
done
