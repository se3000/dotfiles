# .files

After gutting [webpro's dotfiles](https://github.com/webpro/dotfiles)(except his mac defaults), this repo pulls from [Pivotal's workstation](https://github.com/pivotal/workstation-setup), [dimroc's dotfiles](https://github.com/dimroc/dotfiles), [jeffsaracco](https://github.com/jeffsaracco)'s tmux config, and a bunch of other scattered sources online which I've already forgotten.


### Fresh Install:
```
    sudo softwareupdate -i -a
    xcode-select --install
    mkdir ~/workspace && cd ~/workspace
    git clone git@github.com:se3000/dotfiles.git
    ./dotfiles/install.sh
    ssh-keygen
```
