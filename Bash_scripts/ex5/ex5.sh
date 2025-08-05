#!/bin/bash

#exercise 5:
# -Create an empty file
# -Write on the file a column containing the numbers from 1 to 10
# -Evaluate the total sum of the numbers and print it
# -Compare the result with the Gauss summation formula

# Create an empty file
echo "Creating an empty file"
touch numbers.txt

# Write numbers from 1 to 10 into the file
echo "Writing numbers from 1 to 10 into the file"
for i in {1..10}; do
    echo "$i" >> numbers.txt
done

# Calculate the total sum of the numbers using the `awk` command
awk '{sum += $1} END {print "Total sum:", sum}' numbers.txt

# Calculate the total sum using the Gauss summation formula
gauss_sum=$((10 * (11) / 2))
echo "Gauss summation formula result: $gauss_sum"