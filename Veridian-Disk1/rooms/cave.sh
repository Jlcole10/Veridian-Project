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
echo "You enter the cave."
sleep 2
echo "Its a bit damp and gross, but maybe something of use might be here"
echo "You think to check around for a bit just in case."
sleep 2
echo 
echo "The only exit seems to be back in the direction you came, which would be west."
sleep 1
echo "What would you like to do?"


while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "The walls of the cave seem to be a bit damp, maybe a river is near?." ;;
        s ) echo "there seems to be a small rune on the wall here in the shape of an A." ;;
        e ) echo "The cave seems to end here, however signs of alchemy show somethings been covered up." ;;
        w ) ./mainroom.sh
            exit ;;
		u ) echo "It doesn't seem like there's anything to use here." ;;
		h ) echo "You check your pockets and find a ripped up map, some pieces of gum, and a strange watch." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
