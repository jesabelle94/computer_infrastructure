#!/bin/bash

# Ensure the data/weather directory exists
TARGET_DIR="data/weather"
mkdir -p "$TARGET_DIR"

# Ask for user input
echo "What's your name?"
read name
echo "Welcome $name! Do you want to see weather information for Athenry?"
read answer

if [[ $answer == "y" ]]; then
    echo "Loading information..."
    sleep 1
    echo "........."
    sleep 1
    echo "**......."
    sleep 1
    echo "*****...."
    sleep 1
    echo "*******.."
    sleep 1
    echo "*********"
    sleep 1
    echo "--------------------"

    # URL for the weather data (example for Athenry)
    WEATHER_URL="https://prodapi.metweb.ie/observations/athenry/today?format=3"

    # Output file with a timestamped name
    OUTPUT_FILE="$TARGET_DIR/$(date '+%Y%m%d_%H%M%S').json"

    # Fetch weather data using curl and save to file
    curl -s "$WEATHER_URL" -o "$OUTPUT_FILE"

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Weather data saved to $OUTPUT_FILE"
    else
        echo "Failed to fetch weather data. Please check your connection or the URL."
        exit 1
    fi
elif [[ $answer == "n" ]]; then
    echo "Ok, bye!"
    exit 0
else
    echo "Enter y or n next time!"
    exit 1
fi
