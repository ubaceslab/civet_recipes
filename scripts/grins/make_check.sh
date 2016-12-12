#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

print_and_run make -j 32 check 
exitIfReturnCode $?

printf "\nSuccessfully ran make check for GRINS.\n"

exit 0
