#!/bin/bash
#REQUIRED: BUILD_ROOT
#REQUIRED: FEMPUTER_INSTALL_DIRNAME
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_INSTALL_DIRNAME
cd "$BUILD_ROOT"
rm -rf $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully removed $SUBDIR.\n"

exit 0
