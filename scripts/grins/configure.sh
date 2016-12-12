#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

print_and_run $REPO_DIR/configure METHOD=$METHOD
exitIfReturnCode $?

printf "\nSuccessfully configured GRINS.\n"

exit 0
