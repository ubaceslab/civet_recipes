#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run module list
exitIfReturnCode $? 

print_and_run make -j ${FEMPUTER_N_MAKE_THREADS:?undefined} check || (cat test/test-suite.log; false) 
exitIfReturnCode $?

printf "\nSuccessfully ran make check for GRINS.\n"

exit 0
