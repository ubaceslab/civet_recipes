#!/bin/bash
#REQUIRED: BUILD_ROOT
#REQUIRED : FEMPUTER_BUILD_DIRNAME - directory to make and build/test in 
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME

# We need this to be able to remove make distcheck turds
if [ -d $SUBDIR ]; then
   chmod u+w -R $SUBDIR
   exitIfReturnCode $?

   rm -rf $SUBDIR
   exitIfReturnCode $?

   printf "\nSuccessfully cleaned out $SUBDIR \n"
fi

mkdir -p $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully created new testing directory $SUBDIR \n"

exit 0
