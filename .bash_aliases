# add to top of ~/.bash_aliases
#
# if we have one in dotfiles exec it
# if [ -f "$HOME/.dotfiles/.bash_aliases" ] ; then
#  . $HOME/.dotfiles/.bash_aliases
# fi

mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias h=history
alias c=clear
alias opencwd='nautilus .'

# https://garywoodfine.com/use-pbcopy-on-ubuntu/
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias http-serve='python3 -m http.server'

#alias audio-list='pactl list short modules | grep alca_card.pci' # pactl unload-module module-id

alias lgrep='ls -al| grep -i $*'

# docker stuff
alias dk="docker"
alias dkps="docker ps"
alias dkrm="docker rm"
alias dkrmall='docker rm `docker ps -aq --no-trunc`'
alias dki="docker images"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dkrun="docker run -it --rm" # dkrun alpine
alias bat="batcat"

# whats listening on a particular port
alias port-listen="ss -tulpn | grep LISTEN"
