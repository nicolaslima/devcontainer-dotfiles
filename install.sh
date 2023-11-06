#!/bin/sh

zshrc() {
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    # curl -sLo "$HOME/.p10k.zsh" https://gist.githubusercontent.com/nicolaslima/d050e62641d7b401bbe471b5907d7144/raw/40d6684fe859187ceea7fd0ffd9ca1a65bd22319/.p10k.zsh
    cat .zshrc > $HOME/.zshrc
    cat .p10k.zsh > $HOME/.p10k.zsh
}

# change time zone
# sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
# sudo dpkg-reconfigure --frontend noninteractive tzdata

zshrc

# make directly highlighting readable - needs to be after zshrc line
# echo "" >> ~/.zshrc
echo "# remove ls and directory completion highlight color" >> ~/.zshrc
echo "_ls_colors=':ow=01;33'" >> ~/.zshrc
echo 'zstyle ":completion:*:default" list-colors "${(s.:.)_ls_colors}"' >> ~/.zshrc
echo 'LS_COLORS+=$_ls_colors' >> ~/.zshrc
