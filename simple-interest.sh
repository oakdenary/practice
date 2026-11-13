#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Validate that all inputs are positive numbers
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid positive numbers."
    exit 1
fi

# Calculate simple interest and total amount
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $si" | bc)

echo "-----------------------------"
echo "Principal      : $principal"
echo "Rate of Interest: $rate%"
echo "Time Period    : $time years"
echo "Simple Interest: $si"
echo "Total Amount   : $total"
echo "-----------------------------"
