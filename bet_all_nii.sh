#!/bin/bash

# E
#" a linux compliant quotation mark
#' a linux compliant apostrophe
# Finished Doing BET ./Experiments/CPS/test/normalized/ALBERT/iw12_T2.nii ./Experiments/CPS/test/normalized/ALBERT/iw12_T2_BET.nii -B -f 0.1
INPUT=$1
#Get the filename without extension
INP=`${FSLDIR}/bin/remove_ext $INPUT`; #removes file extensions from input image
EXT=${INPUT##*.}; #using a regex to get the filename without extension
FRAG="_BET"
OUTPUT="$INP$FRAG.$EXT"

# Save result in the correct location
# Replace directory 'test' in directory with 'results'
OUTPUT=${OUTPUT/test/results} 

echo Doing BET $INPUT $OUTPUT -B -f 0.1 
# Launch in the background so that we can do multiple at the same time
# Launch without the -B option for faster processing for now
bet $INPUT $OUTPUT -f 0.1
# Launch WITH the -B option. It takes around 2-3 hours per subject
#bet $INPUT $OUTPUT -B -f 0.1
echo Finished Doing BET $INPUT $OUTPUT -B -f 0.1 
