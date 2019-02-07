#!/bin/bash

# E
#" a linux compliant quotation mark
#' a linux compliant apostrophe
# Finished Doing BET ./Experiments/CPS/test/normalized/ALBERT/iw12_T2.nii ./Experiments/CPS/test/normalized/ALBERT/iw12_T2_BET.nii -B -f 0.1
INPUT=$1
#Get the filename without extension
INP=`${FSLDIR}/bin/remove_ext $INPUT`; #removes file extensions from input image
EXT=${INPUT##*.}; #using a regex to get the filename without extension
FRAG="_WATERSHED"
OUTPUT="$INP$FRAG.$EXT"

# Save result in the correct location
# Replace directory 'test' in directory with 'results'
OUTPUT=${OUTPUT/test/results} 

echo Doing NeonateScalper --input $INPUT --output $OUTPUT
# Launch in the background so that we can do multiple at the same time
# Launch without the -B option for faster processing for now
/opt2/spm12/toolbox/mantis/ITKStuff/Build.GLNXA64/MANTiS-build/bin/neonateScalper --input $1 --output $OUTPUT
echo Finished Doing NeonateScalper --input $INPUT --output $OUTPUT

