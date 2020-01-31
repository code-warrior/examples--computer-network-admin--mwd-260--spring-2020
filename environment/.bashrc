green=$(tput setaf 2)
blue=$(tput setaf 4)
white=$(tput setaf 7)
yellow=$(tput setaf 3)

# Setup the prompt
PS1="\[$green\]\t\[$red\]-\[$blue\]\u\[$yellow\]\[$yellow\]\w\[\033[m\]\[$magenta\]\$(__git_ps1)\[$white\]\$ "
PS2='\e[0;32m\]continue...>\[\e[m\] '

# Keep a history of the last 300 commands entered
export HISTSIZE=300

# Ignore duplicate entries in the history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# List the date component of the history command in color
export HISTTIMEFORMAT="[$(tput setaf 6)%F %T$(tput sgr0)]: "

# Use an external file called .bash_aliases for shell-level aliases
if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
fi

# Set up the path
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# Use Sublime Text as the default editor
EDITOR='subl -n -w'
export EDITOR

# Configure Git-related variables for use with .git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"

# Use an external file called .git_aliases for Git-level aliases
if [ -f "${HOME}/.git_aliases" ]; then
   source "${HOME}/.git_aliases"
fi

source ~/.git-prompt.sh
source ~/.git-completion.sh
