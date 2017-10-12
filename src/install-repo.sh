#!/usr/bin/env bash

echo "Changing to home directory"
cd ~

installGitRepo()
{
    if [ -z "$1" ]
   then
     echo "Missing Github repository name."
   else
     echo "Installing \"$1\"."
     git clone https://github.com/ZeroHex/$1
   fi

   echo "Returning to home directory"
   cd ~
}

echo -n "Enter a repo name (eg js-package-manager)"
read repoName

installGitRepo ${repoName}