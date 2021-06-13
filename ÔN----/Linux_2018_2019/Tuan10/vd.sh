#!/bin/bash
dialog --title "Main menu" --backtitle "Linux Shell Script tutorial" --menu "Move using up/down, enter to select" 8 60 4 date "show date" calendar "see calendar" editor "start vi editer " 2>/tmp/input.$$
sel=$?
na=`cat /tmp/input.$$`
case $na in
date) echo " s date" ;;
1) echo "Cancel is Press" ;;
255) echo "[ESCAPE] key pressed" ;;
esac
rm -f /tmp/input.$$
