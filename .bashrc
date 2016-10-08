# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

#adding support for showing git branch
export GITAWAREPROMPT=~/.bash/
source "${GITAWAREPROMPT}/main.sh"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
PS1='${debian_chroot:+($debian_chroot)}\
\[$bldblu\]\u \w\
\[$bldgrn\] $git_branch\
\[$bldylw\]$git_dirty\
\[$bldred\] \$\
\[$txtrst\] '
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#fbset myMode
setfont /usr/share/consolefonts/Lat15-TerminusBold14.psf.gz
alias sshlog='sventurelli@tesla.unife.it'
alias temps='cat /sys/class/thermal/thermal_zone?/temp'

palette=1
if [ $palette -eq 1 ] ; then #Material Dark
    echo -ne "\e]P027292c"  #Background
    #echo -ne "\e]P0263238"  #Background
    echo -ne "\e]P1d32f2f"  #Red Background
    echo -ne "\e]P2388e3c"  #Green Background
    echo -ne "\e]P3ffa000"  #Yellow Background
    echo -ne "\e]P42196f3"  #Blue Background
    echo -ne "\e]P58e24aa"  #Magenta Background
    echo -ne "\e]P60097a7"  #Cyan Background
    echo -ne "\e]P7b0bec5"  #White
    echo -ne "\e]P9f44336"  #Red
    echo -ne "\e]Pa8bc34a"  #Green
    #echo -ne "\e]Pbffc107"  #Yellow
    echo -ne "\e]Pb8bc34a"  #Cyan opposite to Yellow
    echo -ne "\e]Pc03a9f4"  #Blue
    echo -ne "\e]Pdba68c8"  #Purple
    echo -ne "\e]Pe4dd0e1"  #Cyan
    echo -ne "\e]Pfcfd8dc"  #White 
elif [ $palette -eq 2 ] ; then  #Dark Solarized
    echo -ne "\e]P0002b36"  #Background
    echo -ne "\e]P1d32f2f"  #Red Background
    echo -ne "\e]P2388e3c"  #Green Background
    echo -ne "\e]P3ffa000"  #Yellow Background
    echo -ne "\e]P42196f3"  #Blue Background
    echo -ne "\e]P58e24aa"  #Magenta Background
    echo -ne "\e]P60097a7"  #Cyan Background
    echo -ne "\e]P7839496"  #White
    echo -ne "\e]P9dc322f"  #Red
    echo -ne "\e]Pa859900"  #Green
    echo -ne "\e]Pbbc8900"  #Yellow
    echo -ne "\e]Pc268bd2"  #Blue
    echo -ne "\e]Pdd33682"  #Purple
    echo -ne "\e]Pe2aa198"  #Cyan
    echo -ne "\e]Pf586e75"  #White 
elif [ $palette -eq 3 ] ; then  #Tomorrow Night
    echo -ne "\e]P0263238"  #Background
    #echo -ne "\e]P027292c"  #Background
    #echo -ne "\e]P1"  #Red Background
    #echo -ne "\e]P2"  #Green Background
    #echo -ne "\e]P3"  #Yellow Background
    #echo -ne "\e]P4"  #Blue Background
    #echo -ne "\e]P5"  #Magenta Background
    #echo -ne "\e]P6"  #Cyan Background
    echo -ne "\e]P7d7dad8"  #White 
    echo -ne "\e]P9d77c79"  #Red
    echo -ne "\e]Pac2c77b"  #Green
    echo -ne "\e]Pbf4cf86"  #Yellow
    echo -ne "\e]Pc92b2ca"  #Blue
    echo -ne "\e]Pdc0a7c7"  #Purple
    echo -ne "\e]Pe9ac9c4"  #Cyan
    echo -ne "\e]Pfd7dad8"  #White 
elif [ $palette -eq 4 ] ; then #Light Solarized
    echo -ne "\e]P0fdf6e3"  #Background
    echo -ne "\e]P1d32f2f"  #Red Background
    echo -ne "\e]P2388e3c"  #Green Background
    echo -ne "\e]P3ffa000"  #Yellow Background
    echo -ne "\e]P42196f3"  #Blue Background
    echo -ne "\e]P58e24aa"  #Magenta Background
    echo -ne "\e]P60097a7"  #Cyan Background
    echo -ne "\e]P7657b83"  #White
    echo -ne "\e]P9dc322f"  #Red
    echo -ne "\e]Pa859900"  #Green
    echo -ne "\e]Pbbc8900"  #Yellow
    echo -ne "\e]Pc268bd2"  #Blue
    echo -ne "\e]Pdd33682"  #Purple
    echo -ne "\e]Pe2aa198"  #Cyan
    echo -ne "\e]Pfcfd8dc"  #White 
elif [ $palette -eq 5] ; then  #Light Solarized
    echo -ne "\e]P02f3030"  #Background
    echo -ne "\e]P1d32f2f"  #Red Background
    echo -ne "\e]P2388e3c"  #Green Background
    echo -ne "\e]P3ffa000"  #Yellow Background
    echo -ne "\e]P42196f3"  #Blue Background
    echo -ne "\e]P58e24aa"  #Magenta Background
    echo -ne "\e]P60097a7"  #Cyan Background
    echo -ne "\e]P7f8f8f2"  #White
    echo -ne "\e]P9dc322f"  #Red
    echo -ne "\e]Pa859900"  #Green
    echo -ne "\e]Pbb58990"  #Yellow
    echo -ne "\e]Pc268b2d"  #Blue
    echo -ne "\e]Pd6c71c4"  #Purple
    echo -ne "\e]Pe2aa198"  #Cyan
    echo -ne "\e]Pff8f8f2"  #White
else #Github
    echo -ne "\e]P0ffffff"  #Background
    echo -ne "\e]P1d32f2f"  #Red Background
    echo -ne "\e]P2388e3c"  #Green Background
    echo -ne "\e]P3ffa000"  #Yellow Background
    echo -ne "\e]P42196f3"  #Blue Background
    echo -ne "\e]P58e24aa"  #Magenta Background
    echo -ne "\e]P60097a7"  #Cyan Background
    echo -ne "\e]P7333333"  #White
    echo -ne "\e]P9a71d5d"  #Red
    echo -ne "\e]Pa859900"  #Green
    echo -ne "\e]Pbb58990"  #Yellow
    echo -ne "\e]Pc183691"  #Blue
    echo -ne "\e]Pd795da3"  #Purple
    echo -ne "\e]Pe0086b3"  #Cyan
    echo -ne "\e]Pf333333"  #White
fi
clear
#echo -e "\e[?112c"
alias update="sudo apt-get update && sudo apt-get upgrade"
alias testnet="ping -c 3 www.google.com"
alias play="mplayer *.mp3 *.wav"
alias lynx="lynx www.google.com --accept_all_cookies"
alias sshcloud="ssh optimans@64.137.206.167"
alias pingcloud="ping 64.137.206.167"
alias sts="git status"
alias newnote='if [ -f `date +%d-%m-%y` ]; then     echo "A note exists yet"; else     touch `date +%d-%m-%y`; fi'
alias ulysses="ssh dtolomel@frontend2.hpc.sissa.it"
alias elcid="ssh dtolomel@elcid.hpc.sissa.it"
alias c3e="ssh mhpc10@hpc.c3e.exact-lab.it"
alias brc="source ~/.bashrc"

#experiments aliases
alias vs="vim script.sh"
alias vp="vim plot.p"
alias vc="vim code.c"
alias es="bash script.sh"
alias ep="gnuplot plot.p"
alias experiment="mkdir $1 && cp ~/myConfig/sample/* $1"


#fbterm
