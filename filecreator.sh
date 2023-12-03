#!/bin/bash

for i in {1..25}; do
    name="bohdanvyrt"
    number=$((i + $(ls -1q "${name}"* 2>/dev/null | wc -l)))
    touch "${name}${number}"
done
