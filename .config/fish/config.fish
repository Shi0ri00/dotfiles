# Start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

# alias
alias p-s='sudo pacman -S'   		# install
alias p-syu='sudo pacman -Syu'		# upgrade, add 'a' to the list of letters to update AUR packages if you use yaourt
alias p-sy='sudo pacman -Sy'		# update
alias p-rns='sudo pacman -Rns'		# remove
alias p-ss='sudo pacman -Ss'		# search packages
alias p-si='sudo pacman -Si'		# info
alias p-qdt='sudo pacman -Qdt'		# list orphans
alias p-rmo='p-qdt && sudo pacman -Rns $(sudo pacman -Qtdq)' # remove orphans
alias p-cc='sudo pacman -Scc'		# clean cache
alias p-ql='sudo pacman -Ql'		# list files
alias yay='paru'
alias c='clear'
alias vi='nvim'
alias ls='ls --color=auto'
alias ll='ls -lA --color=auto'

function fish_greeting
end

function pacmansh
   $HOME/.config/fish/scripts/pacmansh.sh
end

function colors
   $HOME/.config/fish/scripts/colors.sh
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end


