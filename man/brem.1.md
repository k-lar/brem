---
title: brem
section: 1
header: User Manual
footer: brem 1.4.1
date: November 25, 2022
---

# NAME

brem - basic reminders

# SYNOPSIS

**brem** [*OPTION*]...

# DESCRIPTION

brem is a basic notes/reminders management program that is primarily meant to be
run at the end of your .bashrc file or used with the program launcher rofi.  

# OPTIONS

**-h, `--`help**
: display help message

**-a**
: add an entry inside the reminders file

**-r**
: remove an entry inside the reminders file. If there are multiple entries with the same number,
it will remove the first instance.

**-rn**
: renumber all entries from top to bottom

**-R**
: remove the reminders file (by default: $HOME/.config/brem-reminders)

**`--`show**
: prints all reminders on screen

**`--`add-to-sh**
: appends "brem `--`show" to the end of your shell's configuration file. Current supported shells are
**bash**, **zsh** and **fish**. You can also specify your own path to the configuration file with an
absolute path.

**`--`version**
: prints installed brem version.

To be used with rofi:  

**`--`rofi-menu**
: shows all available rofi options in a simple menu

**`--`rofi-show**
: prints your reminders in a rofi window

**`--`rofi-add**
: add an entry with rofi

**`--`rofi-remove**
: remove an entry by choosing it in rofi

# EXAMPLES

`brem -a "Go to the store!"`
: will add en entry with the content "Go to the store!"

`brem -r 3`
: will remove the entry with the number 3

`brem -r 1,2,3`
: will remove entries 1,2,3

`brem --show`
: will print the contents of $HOME/.config/brem-reminders to the terminal

`brem -a "Sell TV" -r 2 -rn --show`
: will add an entry, delete the entry [2], renumber everything and print it to the terminal

Printed reminders will be in this format:  
```
################ Reminders ###############
[1] - This is an example
[2] - Another example
[3] - And another!
##########################################
```

# FILES

$HOME/.config/brem-reminders
: This file is used to store all the user's reminder entries. This is an **executable shell script** that stores all entries in echo statements. 

# AUTHOR

Written by `K_Lar`.

# REPORTING BUGS

Report any bugs you might find here: <https://gitlab.com/k_lar/brem/-/issues>
