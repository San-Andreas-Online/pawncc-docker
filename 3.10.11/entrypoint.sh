#!/bin/bash

# Run the command passed to the entrypoint
if [ $# -gt 0 ]; then
    echo -e "\nCompiling with command: $@"
    exec "$@"
else
    echo -e "\nNo command provided. You must provide a command to compile with pawncc. For example:\n"
    echo -e "pawncc gamemode.pwn '-D.' '-O2' '-;+' '-(+' '-d3' '-i../include'"
fi

# Save the exit code of whatever we ran
EXIT_CODE=$?

exit $EXIT_CODE
