#!/usr/bin/env bash

# Set the input and output file names
input_file="episode_dates"
output_file="episode_dates.csv"

# Use sed to remove any extra text after the first closing parenthesis on each line
sed -i 's/)\(.*\))/)/' "$input_file"

# Read the input file line by line
while IFS= read -r line; do
  # Extract the title and date from the line
  title=$(echo "$line" | grep -oP '.*(?=" \()')
  date=$(echo "$line" | grep -oP '(?<=\().*(?=\))')

  # Remove the double quotes from the title
  title=$(echo "$title" | tr -d '"')

  # Reformat the date
  reformatted_date=$(date -d "$date" +%F)

  # Write the title and reformatted date to the output file
  echo "$title, $reformatted_date" >>"$output_file"
done <"$input_file"
