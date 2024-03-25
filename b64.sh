#!/bin/bash

#check if file is provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

#check if file exists
if [ ! -f "$1" ]; then
	echo "File $1 does not exist"
	exit 1
fi

#encode to base64
base64Encode=$(base64 < "$1")

echo "$base64Encode" > b64.txt

echo "saved as b64.txt"
