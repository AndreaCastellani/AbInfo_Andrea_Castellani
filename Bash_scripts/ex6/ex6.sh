#!/bin/bash

# Exercise 6:
# -Write a file with control of memory requirements
# -Change the value of MaxMem in place

# Create an empty file
echo "Creating an empty file"
touch memory_requirements.txt

# Write initial memory requirements to the file
echo '# control of memory requirements' >> memory_requirements.txt
echo BoundaryLayerFactor 3.0 >> memory_requirements.txt
echo MaxMem 512 >> memory_requirements.txt
echo MaxMemPerParticle 240 >> memory_requirements.txt
echo PredPeakFactor 0.8 >> memory_requirements.txt

# Display the content of the file
echo " "
echo "Initial memory_requirements.txt:"
cat memory_requirements.txt

#Change the value of MaxMem in place using the awk command
echo " "
echo "Changing the value of MaxMem in place"
awk '{
    if ($1 == "MaxMem") {
        $2 = 1024;
    }
    print $0
}' memory_requirements.txt > temp.txt && mv temp.txt memory_requirements.txt

# Display the updated file content
echo " "
echo "Updated memory_requirements.txt:"
cat memory_requirements.txt
