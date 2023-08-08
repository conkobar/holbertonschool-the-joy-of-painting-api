#!/usr/bin/env bash

# Set the input and output file names
input_file="bob_ross_paintings.csv"
output_file="paintings.csv"

# Read the input file line by line
while IFS= read -r line; do
  # Remove everything inside curly braces
  modified_line=$(echo "$line" | sed -e 's/\[[^]]*\]//g' -e 's/"",//g')
  # Write the modified line to the output file
  echo "$modified_line" >>"$output_file"
done <"$input_file"
