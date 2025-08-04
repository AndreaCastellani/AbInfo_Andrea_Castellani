#!/bin/bash

# Exercise 1:
# -Create dummy files
# -Create an array to store the files
# -Display the files
# -Rename the files using today's date

#Create dummy files
echo "Creating dummy files"
for i in {1..5}; do
  touch "file_$i.txt"
done

#Retrieve the script name
script_name=$(basename "$0")

#Create an array to store the files
file_list=()
for f in *; do
    if [[ -f $f ]] && [[ $f != $script_name ]]; then    # Check if it's a file and not the script itself
        file_list+=("$f")                               # Add the file to the array
    fi
done

#Check if the array is empty and display the files
if [ ${#file_list[@]} -eq 0 ]; then
    echo "No files found."
else
    for f in "${file_list[@]}"; do
        echo "$f"                                      # Display each file
    done
fi

#Get today's date
today=$(date +%F)

#Rename the files using today's date
for f in "${file_list[@]}"; do
    mv "$f" "${today}-$f"
done

#Display the renamed files
echo ""
echo "Renamed files:"
for f in "${file_list[@]}"; do
    echo "${today}-$f"
done