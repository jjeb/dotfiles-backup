# # Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob;

# # Autocorrect typos in path names when using `cd`
# shopt -s cdspell;

# # Easier navigation: .., ..., ...., ....., ~ and -
# alias ..="cd .."
# alias ...="cd ../.."
# alias ....="cd ../../.."
# alias .....="cd ../../../.."
# alias ~="cd ~" # `cd` is probably faster to type though
# alias -- -="cd -"

# # Shortcuts
# alias dl="cd ~/Downloads"
# alias dt="cd ~/Desktop"
# alias g="git"
# alias h="history"
# alias j="jobs"
# alias lendinghome-monolith="cd ~/code/lendinghome-monolith/"
# alias lendinghome-ops="cd ~/code/lendinghome-monolith/ops"
# alias lendinghome-consumer="cd ~/code/lendinghome-monolith/consumer"

# # Add credentials
# alias load-ssh-credentials="ssh-add ~/.ssh/id_rsa_lh"

# # List all files colorized in long format
# alias l="ls -lF ${colorflag}"

# # List all files colorized in long format, including dot files
# alias la="ls -laF ${colorflag}"

# # List only directories
# alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# # Clean up LaunchServices to remove duplicates in the “Open With” menu
# alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# # Recursively delete `.DS_Store` files
# alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# # Kill all the tabs in Chrome to free up memory
# # [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
# alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# # Lock the screen (when going AFK)
# alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# # Reload the shell (i.e. invoke as a login shell)
# alias reload="exec $SHELL -l"