#! /bin/bash

vendor_command="vendor/bin/phpstan"
global_command="phpstan"

command=""
if [ -f $vendor_command ]; then
    command=$vendor_command
else
    command=$global_command
fi

set -x
command_args=
if [ $# -gt 1 ]; then
    command_args=$@
fi

$command analyze ${command_args[@]}
