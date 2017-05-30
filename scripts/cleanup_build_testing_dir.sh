#!/bin/bash
#REQUIRED: BUILD_ROOT
#REQUIRED : FEMPUTER_BUILD_DIRNAME - directory to make and build/test in 
init_script || exit 1

SUBDIR=$BUILD_ROOT/$FEMPUTER_BUILD_DIRNAME
cd "$BUILD_ROOT"
exitIfReturnCode $?

# We need this to be able to remove make distcheck turds
chmod u+w -R $SUBDIR
exitIfReturnCode $?

rm -rf $SUBDIR
exitIfReturnCode $?

printf "\nSuccessfully removed $SUBDIR.\n"

cd "$REPO_DIR"
exitIfReturnCode $?

print_and_run git checkout master
exitIfReturnCode $?

clean_repo

git branch -D test >/dev/null 2>&1

printf "\nSuccessfully removed test branch.\n"

exit 0
