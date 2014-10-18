#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "not-sync/" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;

	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

###############################################################################
# Sublime Text                                                                #
##############################################################################

# Install Sublime Text settings
cp  -r ~/init/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/. 2> /dev/null
cp  -r ~/init/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/. 2> /dev/null
cp  -r ~/init/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/. 2> /dev/null
