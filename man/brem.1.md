---
title: brem
section: 1
header: User Manual
footer: brem 1.0
date: November 7, 2022
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

**-r** [*-rn*]
: remove an entry inside the reminders file [*and renumber all other entries*]

**-rn**
: renumber all entries from top to bottom

**-R**
: remove the reminders file ($HOME/.config/brem-reminders)

**`--`show**
: prints all reminders on screen

**`--`add-to-bashrc**
: appends "brem --show" to the end of your .bashrc.

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

`brem --show`
: will print the contents of $HOME/.config/brem-reminders to the terminal

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
