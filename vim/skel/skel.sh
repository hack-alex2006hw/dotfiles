#!/bin/bash

# Copyright (c) 2015, Alex Davis (alex2006hw@gmail.com)
# License:

# Do not allow usage of unset variables
set -o nounset

# Do not allow errors to keep going, exit immediately
# Disable with: set +e
# Re-enable with: set -e
set -o errexit

TEMP_FILE="$(mktemp)"

function clean_up {
        # Perform anything that needs to be done when we exit,
        # whether or not the exit was a clean one.
        # NOTE: the first parameter will be the exit status.
        rm "${TEMP_FILE}"
        exit $1
}

function usage {
        # Display usage information
        echo "Usage: $(basename "$0")" 1>&2
}

# Call clean_up() on interrupt
trap clean_up SIGHUP SIGINT SIGTERM

if [ "$#" -lt "1" ]; then
        usage
        clean_up 1
fi
