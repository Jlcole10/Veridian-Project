#!/bin/bash
clear
# Initialise the Title Art
file1="titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
#Second iteration of this room so you dont have to go through all that text again.
sleep 1
echo "You stand in the corridor, to the south is the eerie door, the west and east are other doors."
sleep 2
echo "What would you like to do?"

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "You try and open the door but its firmly locked again." ;;
        s ) ./corridor.sh
            exit ;;
        e ) ./computerroom.sh 
            exit ;;
        w ) ./emptyroom.sh
            exit ;;
		u ) echo "There's nothing you can use right here." ;;
		h ) echo "Its a bit dark so I don't think looking at the map would help." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
