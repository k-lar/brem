#!/bin/sh
set -e

date=$(date '+%B %d, %Y')
version=$(sh -c ".././brem --version")

sed -i "s/date\:.*/date: $date/g" brem.1.md

printf '%s is the current brem version.\n' "$version"
printf "What version do you want to change it to?\n: v"; read -r ver_choice

sed -i "s/version=.*/version=\"v$ver_choice\"/" ../brem
printf 'Successfully updated version number to %s in brem.\n' "$ver_choice"

sed -i "s/footer\:.*/footer: brem $ver_choice/" brem.1.md
printf 'Successfully updated version number to %s in brem.1.md\n' "$ver_choice"

printf "Do you want to generate new manpage?\n[Y/n]: "; read -r man_choice
if ! [ "$man_choice" = "n" ]; then
    cd ..
    make manpage
fi

exit 0

