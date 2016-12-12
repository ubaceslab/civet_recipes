#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

cd "$REPO_DIR"
exitIfReturnCode $?

print_and_run ./bootstrap.sh 
exitIfReturnCode $?

printf "\nSuccessfully bootstrapped $REPO_DIR\n"

exit 0
