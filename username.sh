#!/bin/bash
# username.sh
# Owen
# CPSC 298

# Display the rules
echo "Username Rules:"
echo "* Only lowercase letters, digits, and underscores are allowed"
echo "* Must start with a lowercase letter"
echo "* Must contain at least 3 but no more than 12 characters"
echo ""

valid=0

while [ "$valid" -eq 0 ]
do
    echo "Please enter a username:"
    read -r username

    # Check if username matches all requirements using regex
    if echo "$username" | grep -E -q "^[a-z][a-z0-9_]{2,11}$"
    then
        valid=1
    else
        echo "Error: Invalid username."
        echo "Please try again."
        echo ""
    fi
done

echo ""
echo "Thank you! Your username '$username' is valid."