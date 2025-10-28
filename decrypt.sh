#!/bin/bash
# Decryption script for flag.enc

# Check if KEY environment variable is set
if [ -z "$KEY" ]; then
    echo "Error: KEY environment variable is not set"
    echo "Usage: KEY='your_key' ./decrypt.sh"
    exit 1
fi

# Check if flag.enc exists
if [ ! -f "flag.enc" ]; then
    echo "Error: flag.enc not found"
    exit 1
fi

# Decrypt the flag
if openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -salt -in flag.enc -out flag.txt -pass pass:"$KEY"; then
    echo "Decryption successful! Output saved to flag.txt"
    cat flag.txt
else
    echo "Decryption failed! Please check your KEY"
    exit 1
fi
