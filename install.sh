#!/bin/bash

# Check if the script has root permissions
if [[ $EUID -ne 0 ]]; then
    echo "This script needs to be run with root permissions. Use sudo."
    exit 1
fi

# Check if the file exists in the current directory
if [ -f ./dev_tool ]; then
    # Copy the file to /usr/bin
    cp ./dev_tool /usr/bin

    if [ $? -eq 0 ]; then
        echo "dev_tool has been successfully added to /usr/bin"
    else
        echo "There was an error adding dev_tool to /usr/bin"
    fi
else
    echo "dev_tool file not found in the current directory."
    exit 1
fi

chmod +x /usr/bin/dev_tool
