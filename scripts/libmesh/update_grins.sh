#!/bin/bash
#REQUIRED: FEMPUTER_LIBMESH_GRINS_REPO_DIR 
#REQUIRED: FEMPUTER_LIBMESH_GRINS_REPO

init_script || exit 1

print_and_run module list
exitIfReturnCode $?

SUBDIR=$BUILD_ROOT/$FEMPUTER_LIBMESH_GRINS_REPO_DIR

if [ ! -d "$SUBDIR" ]; then
   cd $BUILD_ROOT;
   exitIfReturnCode $?
   # Check it out
   printf "\n$SUBDIR directory doesn't exist, cloning from $FEMPUTER_LIBMESH_GRINS_REPO ...\n"
   git clone "$FEMPUTER_LIBMESH_GRINS_REPO" ./$FEMPUTER_LIBMESH_GRINS_REPO_DIR
   exitIfReturnCode $?
   printf "\n$FEMPUTER_LIBMESH_GRINS_REPO created\n"
else
   cd $SUBDIR;
   exitIfReturnCode $?
   printf "\nUpdating GRINS source tree to latest master...\n"
   git pull origin master
   printf "\nGRINS updated.\n"
fi

exit 0
