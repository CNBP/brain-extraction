#!/bin/sh

#" a linux compliant quotation mark
#' a linux compliant apostrophe
for INPUT in $(ls *.nii)
do
  #INP=${INPUT%.*}; #using a regex to get the filename withou extension
  INP=`${FSLDIR}/bin/remove_ext $INPUT`; #removes file extensions from input image
  EXT=${INPUT##*.}; #using a regex to get the filename without extension
  FRAG="_BET"
  OUTPUT="$INP$FRAG.$EXT" 

  echo Doing BET $INPUT $OUTPUT -B -f 0.1 
  # Launch in the background so that we can do multiple at the same time
  # Launch without the -B option for faster processing for now
  bet $INPUT $OUTPUT -f 0.1 &
  # Launch WITH the -B option. It takes around 2-3 hours per subject
  #bet $INPUT $OUTPUT -B -f 0.1 &
  echo Done
done
