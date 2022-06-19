#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ ' 
PS1='\W > '
#PS1='\[\033[01;33m\]\W \[\033[01;33m\]>\[\033[00m\] '
export QT_QPA_PLATFORMTHEME=qt5ct
pfetch

# Created by `pipx` on 2022-05-05 15:04:47
export PATH="$PATH:/home/kolpa/.local/bin"
export PF_COL3=2
export PF_COL2=3