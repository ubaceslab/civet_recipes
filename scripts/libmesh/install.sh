#!/bin/bash
#REQUIRED: FEMPUTER_N_MAKE_THREADS
#REQUIRED: FEMPUTER_BUILD_DIRNAME
#REQUIRED: FEMPUTER_INSTALL_DIRNAME

init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run module list
exitIfReturnCode $? 

printf "\nInstalling libMesh in $FEMPUTER_INSTALL_DIRNAME.\n"

print_and_run make -j ${FEMPUTER_N_MAKE_THREADS:?undefined} install
exitIfReturnCode $?

printf "\nSuccessfully installed libMesh.\n"

exit 0
