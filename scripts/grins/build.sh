#!/bin/bash
#REQUIRED: APPLICATION_REPO
init_script || exit 1

print_and_run make -j 32 
exitIfReturnCode $?

printf "\nSuccessfully built GRINS.\n"

exit 0
