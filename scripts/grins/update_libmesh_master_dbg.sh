#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

# Unload some GRINS-specific modules for building libMesh
module unload libmesh-dbg gsl antioch-dbg

print_and_run module list
exitIfReturnCode $?

SUBDIR=$FEMPUTER_SWSTACK_REPO/build_scripts
cd "$SUBDIR"
exitIfReturnCode $?

print_and_run ./build_libmesh_master_dbg.sh
exitIfReturnCode $?

printf "\nSuccessfully built libMesh masteri (dbg).\n"

exit 0
