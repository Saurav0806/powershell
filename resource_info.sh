#!/bin/bash

echo "System Resources Information:"
echo "----------------------------"

echo "1. CPU and Memory Usage:"
echo "------------------------"
top -n 1 | head -n 10  # Display top CPU processes

echo "2. Memory Information:"
echo "---------------------"
free -h  # Display memory usage

echo "3. Disk Space Information:"
echo "-------------------------"
df -h   # Display disk space usage

# Redirect the output of the commands to a file
{
    echo "System Resources Information:"
    echo "----------------------------"

    echo "1. CPU and Memory Usage:"
    echo "------------------------"
    top -n 1 | head -n 10

    echo "2. Memory Information:"
    echo "---------------------"
    free -h

    echo "3. Disk Space Information:"
    echo "-------------------------"
    df -h
} > output.txt
