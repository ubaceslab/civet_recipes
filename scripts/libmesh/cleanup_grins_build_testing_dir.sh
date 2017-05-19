#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_BUILD_DIR

init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_BUILD_DIR
rm -rf $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully removed $SUBDIR.\n"

exit 0
