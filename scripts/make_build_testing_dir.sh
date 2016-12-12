#!/bin/bash
#REQUIRED: BUILD_ROOT
#REQUIRED : FEMPUTER_BUILD_DIRNAME - directory to make and build/test in 
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
mkdir -p $SUBDIR
cd "$SUBDIR"
exitIfReturnCode $?

printf "\nSuccessfully created $SUBDIR \n"

exit 0
