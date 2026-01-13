#!/bin/bash
# Simple Interest Calculator

echo "Welcome to the Simple Interest Calculator!"

# Ask user for inputs
read -p "Enter the principal amount (capital): " principal
read -p "Enter the interest rate (annual, in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "---------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $(echo "$principal + $interest" | bc)"
echo "---------------------------------"
