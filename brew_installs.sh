#!/usr/bin/env bash

formulas=("git" "wget" "rbenv" "ruby-build" \
"percona-server" "postgresql"  \
"sqlite" "redis" "nvm" "imagemagick" \
"bash-completion" "ruby-completion" "gnu-typist" "yarn")

function brewing(){
  read -p "Brewing $1. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew install $1
  fi;
}


##Executing brewing...
read -p "Installing Brew. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
  for i in "${formulas[@]}"
    do
      brewing $i
  done
fi;
