#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

# Unload some GRINS-specific modules for building libMesh
module unload libmesh gsl antioch cantera

print_and_run module list
exitIfReturnCode $?

SUBDIR=$FEMPUTER_SWSTACK_REPO/build_scripts
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run ./build_libmesh_master.sh
exitIfReturnCode $?

printf "\nSuccessfully built libMesh master.\n"

exit 0
