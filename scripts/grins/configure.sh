#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

printf "\nWanting to build in $BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME\n"

cd $BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
exitIfReturnCode $?

printf "\nCurrent directory is $PWD\n"

print_and_run module load gcc mpich openblas petsc boost hdf5 vtk gsl libmesh cantera antioch
exitIfReturnCode $?

print_and_run $REPO_DIR/configure 
exitIfReturnCode $?

printf "\nSuccessfully configured GRINS.\n"

exit 0
