#!/bin/bash
function check_status {
    echo "Status: Operational"
}
check_status
if [ -z "$1" ]; then
    echo "Error: No argument provided. Please provide a status message."
else
    check_status "$1"
fi
