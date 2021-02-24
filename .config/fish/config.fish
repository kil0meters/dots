# if status is-interactive
# and not set -q TMUX
#     exec sh -c 'tmux new -s base'
#     exec tmux
# end


fundle plugin 'danhper/fish-ssh-agent'

fundle init

function fish_right_prompt
#intentionally left blank
end

# Show when in a toolbox
# if [ $hostname = "toolbox" ]
# functions --copy fish_prompt fish_prompt_original
# function fish_prompt; printf "[$hostname] "; fish_prompt_original; end
# end

set HOME /home/kilometers
set TERM xterm-256color
set EDITOR nvim
set BAT_THEME gruvbox

alias vim nvim
alias tb toolbox
alias ls exa
alias tree "exa -T"
alias tbe="toolbox enter"
alias dev="toolbox enter dev"
alias e edit
alias config="git --git-dir=$HOME/.dots/ --work-tree=$HOME"

function vimconfig
    set current_directory (pwd)
    cd $HOME/.config/nvim
    nvim init.lua
    cd $current_directory
end

function wiki
    set current_directory (pwd)
    cd $HOME/vimwiki
    nvim -c VimwikiIndex
    cd $current_directory
end

# toolbox apps
# alias aerc="toolbox --conatiner apps run aerc"
# alias mpv="toolbox --container apps run mpv"

set -a PATH /home/kilometers/.cargo/bin
set -a PATH /home/kilometers/go/bin
set -a PATH /home/kilometers/.local/bin
set -a PATH /home/kilometers/.emacs.d/bin

set -a PATH ./node_modules/.bin

set -a NODE_PATH /home/kilometers/.local/lib/node_modules

fish_vi_key_bindings

function fish_mode_prompt --description 'Displays the current mode'
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold red
                echo " N"
            case insert
                set_color --bold green
                echo " I"
            case replace-one
                set_color --bold green
                echo " R"
            case visual
                set_color --bold brmagenta
                echo " V"
        end
        set_color normal
        printf " "
    end
end

# ssh memes
# fisher add danhper/fish-ssh-agent

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/kilometers/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/kilometers/.ghcup/bin $PATH
