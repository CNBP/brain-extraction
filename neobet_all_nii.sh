#!/bin/bash

#bash /opt2/optiBET/optiBET.sh -i w03_T2.nii
#" a linux compliant quotation mark
#' a linux compliant comma
INPUT=$1
#Get the filename without extension
INP=`${FSLDIR}/bin/remove_ext $INPUT`; #removes file extensions from input image
EXT=${INPUT##*.}; #using a regex to get the filename without extension
FRAG="_neoBET_brain"
OUTPUT="$INP$FRAG.$EXT"
# Replace directory 'test' in directory with 'results'
OUTPUT=${OUTPUT/test/results} 

echo Doing neoBET $INPUT
# must use bash and not sh to call neoBet.sh script otherwise it fails
bash /opt2/optiBET/neoBET.sh -i $INPUT
echo Finished Doing neoBET $INPUT

# Save result in the correct location
# INPUT: /toshiba2/Vuyo/Experiments/CPS/test/normalized/dHCP/iwsub-CC00206XX08_ses-70100_T2w.nii
# OUTPUT: /toshiba2/Vuyo/Experiments/CPS/results/normalized/dHCP/iwsub-CC00206XX08_ses-70100_T2w_neoBET_brain.nii
#echo Doing MV $INPUT to $OUTPUT directory
# Value of $INPUT is wrong. It should be result of neoBET and not the non-extracted image
##mv $INPUT $OUTPUT
$RESULT="$INP$FRAG.$EXT"
echo Doing MV $RESULT to $OUTPUT directory
# $RESULT should have the correct file name to move to the results directory
##mv $RESULT $OUTPUT
