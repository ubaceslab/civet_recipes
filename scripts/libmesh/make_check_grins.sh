#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_BUILD_DIR

init_script || exit 1

load_grins_modules || exit 1

print_and_run module list
exitIfReturnCode $?

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_BUILD_DIR

cd $SUBDIR
exitIfReturnCode $?

print_and_run make -j $FEMPUTER_N_MAKE_THREADS check
exitIfReturnCode $?

printf "\nGRINS passed make check!\n"

exit 0
