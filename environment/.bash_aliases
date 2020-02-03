# To run the default version of any command, use a backslash (\). For example, \rm
# would bypass my alias of 'rm -i' on line 36.

# Sublime Text
alias st='/snap/bin/subl'

# Environment
alias ~="cd ~"                                 # ~:            Go Home
alias ..='cd ../'                              # Go back 1 directory level
alias ...='cd ../../'                          # Go back 2 directory levels
alias .3='cd ../../../'                        # Go back 3 directory levels
alias .4='cd ../../../../'                     # Go back 4 directory levels
alias .5='cd ../../../../../'                  # Go back 5 directory levels
alias .6='cd ../../../../../../'               # Go back 6 directory levels
alias c='clear'                                # c:            Clear terminal display
alias cd..='cd ../'                            # Go back 1 directory level (for fast typers)
alias cic='set completion-ignore-case On'      # cic:          Make tab-completion case-insensitive
alias cls='reset && printf "\e[3J"'
alias cp='cp -iv'
alias desktop='cd ~/Desktop'
alias df='df -h'
alias dir='dir --color=auto'
alias du='du -h'
alias grep='grep --color'
alias home='cd'
alias l='ls -l -G'
alias ll='ls -l -G'
alias lla='ls -d .*'
alias ls='ls -G'
alias lsd='ls -d .*'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias path='echo -e ${PATH//:/\\n}'            # path:         Echo all executable Paths
alias rm='rm -i'
alias show_options='shopt'                     # Show_options: display bash options settings
alias sizeof='du -hs'
alias vdir='vdir --color=auto'
alias which='type -all'                        # which:        Find executables
alias pbcopy='xclip -selection clipboard'      # xclip must be installed for this to work. Thus, first run `sudo apt-get install xclip -y`
alias pbpaste='xclip -selection clipboard -o'

mcd () { mkdir -p "$1" && cd "$1"; }           # mcd:          Makes new Dir and jumps inside
cd () { builtin cd "$@"; ll; }                 # Always list directory contents upon 'cd'
