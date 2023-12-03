#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory> <original_extension> <new_extension>"
    exit 1
fi

directory=$1
original_extension=$2
new_extension=$3

for file in "$directory"/*."$original_extension"; do
    new_file="${file%.$original_extension}.$new_extension"
    echo "Переіменовую $file на $new_file"
done
