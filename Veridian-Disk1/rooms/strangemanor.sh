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
echo "You walk north through the field and find a large manor"
sleep 2
echo "Judging from its construction, it seems to be mid 19XX's."
echo "But why is it here in this random place? You wonder to yourself."
sleep 1
echo "Well I guess I have no clue why I'm even here..."
sleep 2
# This is the check to see if the key is activated. If you do itll give you a different set of text and allow you to pass to the next part
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "You walk up to the door and give it a firm rattle."
                sleep 2
                echo "Hmm it seems like its locked, strange."
                sleep 2
                echo "Maybe this key will work and unlock the door."
            else
                echo "You walk up to the door and give it a firm rattle."
                sleep 2
                echo "Hmm it seems like its locked, strange."
            fi 

sleep 2
echo "The only exit is south, back the way you came."
sleep 1
echo "What would you like to do?"


while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "I wonder who would live in a manor all the way out here?" ;;
        s ) ./mainroom.sh
            exit ;;
        e ) echo "Its just nothing but forest for as long as the eye can see" ;;
        w ) echo "These trees could be thousands of years old...wild. Wait why does this have a T carved into it?" ;;
		h ) echo "Maybe if you had something important in your inventory like a KEY this would be relevant." ;;
		u ) leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
            	echo "You grab the old key from your pocket, hands shaking with anticipation."
            	sleep 2
            	echo "The handle gleams in the cold, almost daring you to open it and see what lies within."
            	sleep 2
            	echo "You slide the key in, and with a small click you hear it open."
            	sleep 5
                ./manor.sh
                exit
            else
                echo "You try and force the door open to no avail. It seems you might need a key of some sort."
            fi 
            ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
