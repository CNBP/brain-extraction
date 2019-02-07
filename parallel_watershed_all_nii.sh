#!/bin/bash

#find ./Experiments/CPS/test/ -type f -iname *.nii | parallel --max-args=1 ./watershed_all_nii.sh {1}
# Find all files that are not y_* or starting with wsub*
#find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)' | parallel --max-args=1 ./watershed_all_nii.sh {1}
#find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)' | parallel --bar --joblog watershed_jobs --max-args=1 ./watershed_all_nii.sh {1}
find ./Experiments/CPS/test/ -type f -not -regex '^\(.*/w.*\.nii\)\|\(.*/y.*\.nii\)\|\(.*/*.log\)' | parallel --bar --joblog watershed_jobs --max-args=1 ./watershed_all_nii.sh {1}
