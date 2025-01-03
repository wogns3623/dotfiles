# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wogns3623/dotfiles/HEAD/init.sh)"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install gnupg
brew install git
brew install git-crypt

# initialize git into home directory
git init
git remote add origin "https://github.com/wogns3623/dotfiles.git"
git fetch
git reset origin/main
git stash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install oh-my-zsh plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat

# TODO: Add obsidian git sync
