# brem (~~bashrc~~ Basic Reminders)

A pretty basic notes/reminders management program  
**Written in POSIX sh**

## Features

- Adding / removing entries
- Basic renumbering
- Integration with rofi
- Uses another shell script file to store entries with echo
- Ability to use subshells when adding entries within rofi

## Installation

```console
# Clone git repo and go into directory
git clone https://gitlab.com/k_lar/brem; cd brem

# Install
sudo make install

# Uninstall
sudo make uninstall
```

## Usage

```console
# Adding entries:
brem -a "Very important note"

# Removing entries:
# This one removes entry [1]
brem -r 1

# Display entries:
brem --show

# Show notes/reminders when you open a terminal
# WARNING: THIS WILL MODIFY YOUR .bashrc FILE.
# You can do this yourself by appending "brem --show" to the end of .bashrc
brem --add-to-bashrc

# For additional commands
brem -h
```

Example:

```console
user@pc:~$ brem --show
################ Reminders ###############
[1] - Call the plumber
[2] - Check on grandma
[3] - Cool website: https://sr.ht
[4] - Learn haskell
[5] - Try emacs
[6] - Release brem 1.0
##########################################
```

Notes / reminders are stored in a seperate file in `~/.config/brem-reminders`.  
This file is an **executable shell script** that stores entries in echo statements.  
The storage format is:  

```bash
echo "[1] - My first note!"
echo "[2] - Call mom"
...
echo "[6] - Take out the trash"
```

## Rofi

All basic functions of this program are available with rofi commands.  
I recommend using a keybinding to run brem with the rofi menu option, since it contains all
other rofi options in a neat menu. For example in sxhkd
(an independant program that handles keyboard shortcuts):

```sh
super + u
  sh -c "brem --rofi-menu"
```

## Dependencies

- [Optional] [rofi](https://github.com/davatorium/rofi)

## FAQ

- **Why store entries in a shell script?**  
  The reason I started this project was because I was writing my notes/reminders at the bottom
  of my .bashrc file with each one being a seperate echo. I got tired of doing that manually,
  so I ended up making this program. It's more or less just a weird design decision I made
  in the beginning and didn't bother changing it.

- **Can I use dmenu instead of rofi?**  
  It should be pretty easy to manually replace all rofi commands with their dmenu counterpart.
  I do plan on eventually supporting dmenu if enough people show interest.

- **Why would I use this glorified TODO manager if better alternatives exist?**  
  Well, I would like to think that there are people like me in this world, where they wrote
  down all their important stuff at the end of their .bashrc to remember it every time they
  open a terminal. I mainly wrote this program for myself as a challenge and it's useful for me.
  Maybe it can be useful to you too.

- **What did you use to write this program/script?**
    * Editor: Neovim
    * Linter: Shellcheck

## Feedback

Any and all feedback is appreciated since this is my first released program/script.

