#!/bin/bash

file_name="M.mp3"

# Check if the file exists
if [ -f "$file_name" ]; then
    # Play the audio file
    if command -v vlc &>/dev/null; then
        vlc "$file_name"
    elif command -v mplayer &>/dev/null; then
        mplayer "$file_name"
    elif command -v mpv &>/dev/null; then
        mpv "$file_name"
    else
        echo "No suitable media player found."
    fi
else
    echo "File $file_name not found."
fi