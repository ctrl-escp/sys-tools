#!/bin/bash

TARGETPATH="/usr/local/bin"

for toolName in "aptdate" "pipdate" "fix-newline"
do
  echo "Installing /usr/local/bin/$toolName..."
  sudo rm "$TARGETPATH/$toolName" > /dev/null 2>&1
  sudo ln -s "$(pwd)/$toolName.sh" "$TARGETPATH/$toolName"
  sudo chmod +x "$TARGETPATH/$toolName"
done

echo "Done :)"