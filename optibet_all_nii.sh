#!/bin/sh

#bash /opt2/optiBET/optiBET.sh -i w03_T2.nii
#" a linux compliant quotation mark
#' a linux compliant comma
for INPUT in $(ls *.nii)
do
  echo Doing optiBET $INPUT
  # must use bash and not sh to call optiBet.sh script otherwise it fails
  bash /opt2/optiBET/optiBET.sh -i $INPUT &
  echo Done
done
