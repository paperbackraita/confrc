# Brew configuration

set -gx PATH /usr/local/sbin/ $PATH
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

## SHELL

alias confrc 'vim ~/.config/fish/config.fish'
alias conf_fishrc 'vim ~/.config/fish/config.fish'
alias watch 'watch '
alias conf_vimrc 'vim ~/.vimrc'
alias conf_tmux 'vim ~/.tmux.conf'
alias sv 'sudo vim'
alias py 'ipython'
alias py2 'ipython3'
alias py3 'ipython2'


## GIT

alias gs 'git status'
alias gl 'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gll 'git log --graph'
alias gap 'git add -p'
alias gc 'git commit'
alias gam 'git commit -am '
alias gtc "git clone"

## SSH

alias sshv "ssh -v -o PreferredAuthentications=publickey -l mmalpotr"
alias scpv "scp -v"

## NETWORK

alias sop "sudo lsof -nP -i4TCP -sTCP:LISTEN"
alias op "lsof -nP -i4TCP -sTCP:LISTEN"
alias pyserve "python -m SimpleHTTPServer"