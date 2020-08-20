# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.dotfiles/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"
export EDITOR=vim

export ZSH=$HOME/.oh-my-zsh


ZSH_DISABLE_COMPFIX=true
ZSH_THEME="ys"

plugins=(
  git
  zsh-completions 
  zsh-syntax-highlighting
  zsh-autosuggestions
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

source $ZSH/oh-my-zsh.sh 

if [ -d $HOME/.asdf ]; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

if [ -f $HOME/.zshrc_local ]; then
    source $HOME/.zshrc_local
fi

# To make direnv work,. this has to be the last entry ind .zshrc
eval "$(direnv hook zsh)"

bash $HOME/.motd

