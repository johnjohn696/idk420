#!/bin/bash

#color
YELLOW="\033[33m"
RED="\033[31m" 
BOLD_RED="\033[1;31m"
RESET="\033[0m"


# Define arrays for days and their corresponding activities
days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")
activities=("dips" "chin ups" "squats" "shoulder press" "rows" "deadlifts" "leg raises")



# Display the menu
echo "What day is it? Please choose a number from the following:"
for i in "${!days[@]}"; do
    echo "$((i + 1)). ${days[$i]}"
done




# Read user input
read -p "Enter the number corresponding to the day: " day_number






# Check if the input is a valid number
if [[ "$day_number" =~ ^[1-7]$ ]]; then
    # Calculate indexes for today and three days ahead
    index_today=$((day_number - 1))
    index_three_days_ahead=$(( (day_number + 2) % 7 ))

    # Output today's activity and the activity three days ahead
    echo -e "Today is: ${YELLOW}${days[$index_today]} ${RESET}"
    echo -e " ${BOLD_RED} ${activities[$index_today]} ${RESET} AND ${BOLD_RED} ${activities[$index_three_days_ahead]} ${RESET}"
else
    echo "Invalid input. Please enter a number between 1 and 7."
fi
