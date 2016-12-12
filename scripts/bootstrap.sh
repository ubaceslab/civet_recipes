#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

cd "$REPO_DIR"
printf "\nCurrent directory is $PWD\n"
exitIfReturnCode $?

print_and_run ./bootstrap 
exitIfReturnCode $?

printf "\nSuccessfully bootstrapped $REPO_DIR\n"

exit 0
