#!/bin/bash
#REQUIRED: FEMPUTER_BUILD_DIRNAME
#REQUIRED: FEMPUTER_N_MAKE_THREADS 
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run module list
exitIfReturnCode $? 

print_and_run make -j $FEMPUTER_N_MAKE_THREADS
exitIfReturnCode $?

printf "\nSuccessfully built libMesh.\n"

exit 0
