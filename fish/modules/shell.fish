## Shell specific custom functions

function confrc
    if [ -n "$argv" ]
        vim ~/.config/fish/modules/"$argv".fish
    else
        vim ~/.config/fish/config.fish
    end
end

alias conf_fishrc   'vim ~/.config/fish/config.fish'
alias watch         'watch '
alias conf_vimrc    'vim ~/.vimrc'
alias conf_tmux     'vim ~/.tmux.conf'
alias pad           'cd ~/.pad'
alias sv            'sudo vim'
alias py            'ipython'
alias py2           'ipython2'
alias py3           'ipython3'
alias xc            'pbcopy'
alias date          'gdate'
alias readlink      'greadlink'
alias lh            'ls -lhrt'
alias curlh         'curl -D- -Sso/dev/null'

function gnair
    grep -nair "$argv" *
end

function grype
    if [ -n "$argv[1]" ] && [ -n "$argv[2]" ]
        for fl in (find . -type f -name "*.""$argv[1]")
            grep -Hnai "$argv[2]" "$fl"
        end
    else
        echo "Missing type!"
        echo "Usage: grype FILETYPE SUBSTRING"
        return 1
    end
end
