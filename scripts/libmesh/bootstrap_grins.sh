#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_REPO_DIR 

init_script || exit 1

print_and_run module list
exitIfReturnCode $?

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_REPO_DIR
cd $SUBDIR;
exitIfReturnCode $?

print_and_run ./bootstrap
exitIfReturnCode $?

printf "\nSuccessfully bootstrapped GRINS\n"

exit 0
