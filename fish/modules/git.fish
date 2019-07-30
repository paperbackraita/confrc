## GIT specific fish module

alias gs	'git status'
alias gl	'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gll	'git log --graph --color --all --decorate'
alias gap	'git add -p'
alias gc	'git commit'
alias gam	'git commit -am '
alias gtc	"git clone"
alias gd	"git diff"
alias gds   "git diff --staged"

function git_pwd_vars --on-variable PWD
    set -l git_root_wd (git rev-parse --show-toplevel 2>/dev/null)
    if set -q git_root_wd
        set -gx gitroot $git_root_wd
    end
end

function groot
    cd $gitroot
end 

