#!/bin/bash
function pause(){
    read -p "$*"
}

echo -n "Show hidden files? true/false >  "
read input
echo "You entered: $input"

if $input ; then
  defaults write com.apple.finder AppleShowAllFiles -bool true
else
  defaults write com.apple.finder AppleShowAllFiles -bool false
fi

killall Finder
pause "show hidden files = $input"
