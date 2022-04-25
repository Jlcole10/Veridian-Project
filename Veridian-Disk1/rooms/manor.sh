#!/bin/bash
clear

# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo


sleep 1
echo "The door creaks open, being pushed along by the winds that beckon you down the staircase into the cellar."
echo
sleep 2
echo "You cautiously take a couple of steps into the house, looking around to see if any enemies are lurking."
sleep 2
echo "BAM"
sleep 1
echo "The door slams behind you in a hurry, as if its running from some mysterious force."
sleep 1
echo "Then you hear it"
sleep 2
echo "A small chime echos throughout the corridor."
sleep 1
echo "The faint whispers of its melody sound familiar, too familiar"
sleep 2
echo "You stand in the corridor, to the south is the eerie door, the west and east are other doors."
sleep 2
echo "What would you like to do?"

#More room logic stuff

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
