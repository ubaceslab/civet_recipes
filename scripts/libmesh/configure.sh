#!/bin/bash
#REQUIRED: APPLICATION_REPO
#REQUIRED: FEMPUTER_BUILD_DIRNAME
#REQUIRED: FEMPUTER_INSTALL_DIRNAME
#REQUIRED: FEMPUTER_LIBMESH_ADDITONAL_CONFIG_OPTIONS
#REQUIRED: FEMPUTER_LIBMESH_CONFIG_METHODS 
init_script || exit 1

printf "\nWanting to build in $BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME\n"

cd $BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
exitIfReturnCode $?

print_and_run module list
exitIfReturnCode $?

FEMPUTER_LIBMESH_INSTALL_DIR="$BUILD_ROOT/$FEMPUTER_INSTALL_DIRNAME"
FEMPUTER_LIBMESH_COMMON_CONFIG_OPTIONS="--enable-everything --with-metis=PETSc --with-cppunit-prefix=${CPPUNIT_DIR:?undefined} --with-vtk-lib=${VTK_LIB:?undefined} --with-vtk-include=${VTK_INCLUDE:?undefined} --with-methods=${METHODS:?undefined} --prefix=${FEMPUTER_LIBMESH_INSTALL_DIR:?undefined} --enable-hdf5"

print_and_run $REPO_DIR/configure $FEMPUTER_LIBMESH_COMMON_CONFIG_OPTIONS $FEMPUTER_LIBMESH_ADDITONAL_CONFIG_OPTIONS
exitIfReturnCode $?

printf "\nSuccessfully configured libMesh.\n"

exit 0
