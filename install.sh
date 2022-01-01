#!/bin/bash

TARGETPATH="/usr/local/bin"

echo "Installing /usr/local/bin/aptdate..."
sudo rm "$TARGETPATH/aptdate" > /dev/null 2>&1
sudo ln -s "$(pwd)/aptdate.sh" "$TARGETPATH/aptdate"
sudo chmod +x "$TARGETPATH/aptdate"

echo "Installing /usr/local/bin/pipdate..."
sudo rm "$TARGETPATH/pipdate" > /dev/null 2>&1
sudo ln -s "$(pwd)/pipdate.sh" "$TARGETPATH/pipdate"
sudo chmod +x "$TARGETPATH/pipdate"

echo "Done :)"