#!/usr/bin/env bash

echo "Changing to home directory"
cd ~

installGitRepo()
{
    if [ -z "$1" ]                           # Is parameter #1 zero length?
   then
     echo "Missing argument."
   else
     echo "Installing \"$1\"."
     git clone https://github.com/ZeroHex/$1
   fi

   echo "Returning to home directory"
   cd ~
}

# installGitRepo repo-name