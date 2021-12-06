#!/bin/bash
echo Installing /usr/local/bin/aptdate
sudo ln -s `pwd`/aptdate.sh /usr/local/bin/aptdate
sudo chmod +x /usr/local/bin/aptdate

echo Installing /usr/local/bin/pipdate
sudo ln -s `pwd`/pipdate.sh /usr/local/bin/pipdate
sudo chmod +x /usr/local/bin/pipdate
