#!/bin/bash
#REQUIRED: BUILD_ROOT
#REQUIRED : FEMPUTER_BUILD_DIRNAME - directory to make and build/test in 
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME

rm -rf $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully cleaned out $SUBDIR \n"

mkdir -p $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully created new testing directory $SUBDIR \n"

exit 0
