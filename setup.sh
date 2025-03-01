#!/bin/bash - 
#===============================================================================
#
#          FILE: setup.sh
# 
#         USAGE: ./setup.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ZShell, Vim, Kitty
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Henok Haile 
#  ORGANIZATION: 
#       CREATED: 02/28/2025 06:27:27 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#!/bin/bash

# Create symlinks for dotfiles
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
# Add more as needed

echo "Dotfiles setup complete!"
