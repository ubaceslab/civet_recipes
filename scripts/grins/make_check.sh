#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run module load gcc mpich openblas petsc boost hdf5 vtk gsl libmesh cantera antioch
exitIfReturnCode $?

print_and_run make -j 32 check 
exitIfReturnCode $?

printf "\nSuccessfully ran make check for GRINS.\n"

exit 0
