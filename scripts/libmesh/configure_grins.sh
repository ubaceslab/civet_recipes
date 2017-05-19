#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_BUILD_DIR
#REQUIRED: FEMPUTER_LIBMESH_GRINS_REPO_DIR

init_script || exit 1

if [ $METHOD == "dbg" ]; then
   load_grins_modules_dbg || exit 1
else
   load_grins_modules || exit 1
fi

print_and_run module list
exitIfReturnCode $?

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_BUILD_DIR

cd $SUBDIR
exitIfReturnCode $?

print_and_run $BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_REPO_DIR/configure --with-libmesh=$BUILD_ROOT/$FEMPUTER_INSTALL_DIRNAME
exitIfReturnCode $?

printf "\nSuccessfully configured GRINS\n"

exit 0
