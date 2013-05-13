export ANTIGEN_DEFAULT_REPO_URL=https://github.com/szferi/oh-my-zsh.git
source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle szferi/oh-my-zsh plugins/mercurial

# Thene
antigen theme szferi/dotfiles themes/szferi.zsh-theme

# Apply
antigen apply

