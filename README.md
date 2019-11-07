# dotfiles
A place to share my configurations across different workstations - feel free to use whatever you need.

I use [Arch Linux](https://www.archlinux.org/) or some other [arch-based distribution](https://wiki.archlinux.org/index.php/Arch-based_distributions). 

# wiki
I also abuse this repository to store my [wiki pages](wiki/index.md) which consolidate informations i gathered around tools, coding
tools, concepts etc.


# Installation
There are some packages which need to be installed in order to use these dotfiles

## dotfiles location
Clone the dotfiles into `$HOME/.dotfiles`.

## needed Packages
- vim 
- zsh 
- git

## vim
- `mkdir $HOME/.dotfiles/vim/vim/autoload` 
- `ln -s $HOME/.dotfiles/vim/vim .vim`
- `ln -s $HOME/.dotfiles/vim/vimrc .vimrc`

## zsh
Install zsh and the following packages.

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for a good configuration, theme and plugin support.
- [nerdfonts](https://github.com/ryanoasis/nerd-fonts) (for glyphs and coding fonts) at least:
	+ SauceCode Pro
	+ FuraCode
- [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions) zsh shell theme
- [thefuck](https://github.com/nvbn/thefuck)
- [bat](https://github.com/sharkdp/bat)
- [lsd](https://github.com/Peltoche/lsd)
- Link config with `ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc`.
- Use `SauceCode Pro` or `FuraCode` as font in the terminal emulator of your choice (I use gnome-terminal)

## git
- Link config with `ln -s $HOME/.dotfiles/git/gitconfig .gitconfig`.
- Copy `git/gitconfig.local` to your home directory and change git name and email:
`cp $HOME/.dotfiles/git/gitconfig.local $HOME/.gitconfig.local`

## WindowManager(s)
I use i3 (at home) and gnome (at work) as window managers.

### i3
- Link the config with `ln -s $HOME/.dotfiles/i3/i3config $HOME/.config/i3/config`
- Link the statusbar config with `ln -s $HOME/.dotfiles/i3/i3StatusConfig $HOME/.config/i3status/config`

### gnome
_todo_


## Development Environments

### JetBrains IDEs
I started using the plugin [ideavim](https://github.com/JetBrains/ideavim) which can be configured via `.ideavimrc`
file. 
- Link via `ln -s ~/.dotfiles/ideavim/ideavimrc .ideavimrc`.
- Link settings via `ln -s ~/.dotfiles/ideavim/vim_settings.xml .<JETBRAINS IDE>/config/options/vim_settings.xml`

