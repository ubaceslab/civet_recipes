#!/bin/bash
init_script || exit 1

print_and_run module load autotools git gdb valgrind anaconda 
exitIfReturnCode $?

printf "\nSuccessfully loaded common modules\n"

exit 0
