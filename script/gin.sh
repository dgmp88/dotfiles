#!/bin/bash
ext="$1"
search="$2"
output="$(grep --include \*.$ext -r "$search" .)"
echo "$output"

