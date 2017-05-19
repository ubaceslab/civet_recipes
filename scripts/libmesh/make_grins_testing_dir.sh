#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_BUILD_DIR

init_script || exit 1

print_and_run module list
exitIfReturnCode $?

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_BUILD_DIR

rm -rf $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully cleaned out $SUBDIR \n"

mkdir -p $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully created GRINS build directory $SUBDIR\n"

exit 0
