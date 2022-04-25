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


echo "You walk south in the plains and stumble upon a...strange looking chest?."
sleep 2
echo "'This could be a mimic, I should be careful' you think to yourself  "
sleep 2
echo "You try and open the chest, but it doesn't seem to budge."
sleep 2
echo "Hmm, I wonder if I have anything I can use to pry it open."
sleep 2
echo
echo "What would you like to do?."
sleep 2
# lever logic stating if its on or off
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "It seems like the chest is the only thing here. Now that we have this key though, maybe we could put it somewhere?"
            else
                echo "Hmm, how am I going to get this chest open?"
            fi
sleep 2
echo "The only exit is north, back the way you came."
echo
echo "What would you like to do?"

# This is the logic to use the stick and gain access to the key. Once you use the stick it activates the trigger so you can open the door.

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./mainroom.sh 
            exit ;;
        s ) echo "There doesn't seem to be anything but plains around here" ;;
        e ) echo "Man...Still nothing but plains....Crazy" ;;
        w ) echo "I think this landscape needs more happy lil trees or something" ;;
		h )  leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo " Press u to use the stick on the chest silly goose"
                
            else
                echo "Hmm, the chest seems to be shut tight. I wonder what i can use to open it?."
            fi 
            ;;

		u ) branchstate=`cat ../logic/branchlogic.ben`
		if [ "$branchstate" = "yes" ]; then
		sed -i='' 's/off/on/' ../logic/leverlogic.ben
                echo "You pry the chest open with the stick, then use it to prop up the chest."
                sleep 2
                echo "Woah, there's a key in here! It seems pretty old, I wonder if i could use it anywhere?"
                sleep 2
                echo "You scan the inside of the chest and find some strange scribbles on it. However, the only letter you can make out is an H."
                
                else 
                	echo " It doesn't seem like I have anything in my inventory that could help here. Maybe if I had a nice stick I could open it?"
                fi
		;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
