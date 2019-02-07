#!/bin/bash

#find ./Experiments/CPS/test/ -type f -iname *.nii | parallel --max-args=1 ./neobet_all_nii.sh {1}
# Find all files that are not y_* or starting with wsub*
#find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)' | parallel --max-args=1 ./neobet_all_nii.sh {1}
#find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)' | parallel --joblog neobet_jobs --max-args=1 ./neobet_all_nii.sh {1}
#find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)\|\(.*/.*neoBET.*\)' | parallel --bar --joblog neobet_jobs --max-args=1 ./neobet_all_nii.sh {1}
find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)\|\(.*/.*neoBET.*\)\|\(.*/*.log\)' | parallel --bar --joblog neobet_jobs --max-args=1 ./neobet_all_nii.sh {1}
