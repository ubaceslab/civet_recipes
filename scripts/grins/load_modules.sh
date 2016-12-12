#!/bin/bash
#REQUIRED: APPLICATION_REPO
#REQUIRED : RUN_CMD: run command
#OPTIONAL: APP_SUBDIR : subdir to run command in
init_script || exit 1

print_and_run module load gcc mpich openblas petsc boost hdf5 vtk gsl libmesh cantera antioch 
exitIfReturnCode $?

printf "\nSuccessfully ran $RUN_CMD\n"

exit 0
