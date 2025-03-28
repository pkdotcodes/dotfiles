fish_vi_key_bindings

if test (uname) = Darwin
    set -gx PATH /opt/homebrew/bin $PATH
end

set -gx TERM xterm-256color

fish_add_path ~/bin
fish_add_path ~/go/bin

alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

starship init fish | source
zoxide init --cmd cd fish | source

function forward-char-and-accept-autosuggestion-if-at-end
    set -l right_of_cursor "$(string sub "$(commandline)" --start (math (commandline --cursor) + 2))"
    commandline -f forward-char
    if test -z $right_of_cursor
        commandline -f accept-autosuggestion
    end
end
bind l forward-char-and-accept-autosuggestion-if-at-end

function v
    nvim $argv
end

function ls
    eza $argv
end
