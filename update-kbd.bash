#!/usr/bin/env bash

KBD_FILE="kanata.kbd"

rm $KBD_FILE

wget https://raw.githubusercontent.com/gooberlogic/nix-flakes/refs/heads/des-nixos/nixos/modules/hardware/kanata.nix -O $KBD_FILE

sed -i -n '/\s*keyboards\.default\.config = \x27\x27\s*/,/\s*\x27\x27;\s*/p' $KBD_FILE
sed -i '1d;$d' $KBD_FILE
sed -i 's/^      //' $KBD_FILE
