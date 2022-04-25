#!/bin/bash
clear

# This is a repeat of the opening room in the start.sh file - if the player
# wants to go back to the main room, this saves going through the whole
# start script over again.

# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# Setup for the script.
sleep 1
echo "You sit down on the oak log you woke up next to."
sleep 1 
echo "Hmm, it seems that there's more to explore. I should check my map."
sleep 1
echo "You stare at your map for a bit, then realize that its quite tattered."
sleep 1
echo "I should probably be careful with this, I'm not even sure where I am."
sleep 1
echo "You can just about see locations to the north, east, south and west."
sleep 1
echo "What would you like to do?"

# And the room logic choices.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./strangemanor.sh
            exit ;;
        s ) ./chest.sh
             exit ;;
        e ) ./cave.sh 
            exit ;;
        w ) ./forest.sh
            exit ;;
		u ) echo "There's not much to use here, maybe elsewhere." ;;
		h ) echo "You check your pockets and find a ripped up map, some pieces of gum, and a strange watch." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
