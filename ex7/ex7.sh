#!/bin/bash

# Exercise 7:
# -Display on the standard output and save on file info about the CPU architecture
# -Write a file with the CPU architecture information

# Collect CPU architecture information, display and write it to a file
echo "Collecting CPU architecture information"
lscpu
lscpu > lscpu.txt

# Extract the required information
echo
echo "Extracting required CPU information"
CPU=$(lscpu | grep "Model name" | awk -F ': ' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')
Threads=$(lscpu | grep "Thread(s) per core" | awk -F ': ' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')
Cores=$(lscpu | grep "Core(s) per socket" | awk -F ': ' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')
NUMAs=$(lscpu | grep "NUMA node(s)" | awk -F ': ' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')

# Write the information to the file 'CPU_arch.txt'
echo "Writing required information to CPU_arch.txt"
{
    printf "CPU architecture : \n"
    printf "    %-13s: %s\n" "CPU name" "$CPU"
    printf "    %-13s: %s\n" "Threads" "$Threads"
    printf "    %-13s: %s\n" "Cores" "$Cores"
    printf "    %-13s: %s\n" "NUMAs" "$NUMAs"
} > CPU_arch.txt
