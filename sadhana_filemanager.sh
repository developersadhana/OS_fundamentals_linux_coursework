#!/usr/bin/bash

echo "----File Management Operations----"
echo "1) File Listing"
echo "2) File Copying"
echo "3) File Moving"
echo "4) File Deleting"

echo "Enter your choice (1-4) :"
read choice

if [[ "$choice" =~ ^[1-4]$ ]]; then
	
if [[ $choice == 1 ]]; then
echo "All files ="
ls -a | sort
echo "Done"
fi

if [[ $choice == 2 ]]; then
echo "Enter the name of the file you wish to copy ="
read file
echo "Enter the destination file ="
read $dfile

if [[ -e $file ]]; then
            cp "$file" "$dfile"
            echo "Done"
        else
            echo "File does not exist"
fi
fi

if [[ $choice == 3 ]]; then
echo "Enter the name of the file you wish to move ="
read file
echo "Enter the destination file ="
read dfile

if [[ -e $file ]]; then
            mv "$file" "$dfile"
            echo "Done"
        else
            echo "File does not exist"
fi
fi

if [[ $choice == 4 ]]; then
echo "Enter the file you wish to delete ="
read file

if [[ -e $file ]]; then
            rm "$file"
            echo "Done"
        else
            echo "File does not exist"
fi
fi

else 
echo "Invalid Input"
fi
