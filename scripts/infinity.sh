#!/bin/sh
trap : TERM INT
echo "Running... Have fun!"
tail -f /dev/null & wait