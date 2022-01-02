# Remove \r from a file in-place
 sed -i 's/\r$//g' "$1"