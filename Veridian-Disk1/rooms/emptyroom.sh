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
echo "You slowly creak the door open to reveal...an empty room?."
sleep 2
echo "Well I guess it makes sense that there shouldn't be any thing in these rooms anyway."
sleep 2
echo "You walk around the empty room for a bit, running your hands along the old oak walls."
echo "Hmm there doesn't seem to be anything here, but I suppose ill look around for a bit more."
sleep 2
echo " The exit is back east, what would you like to do?"
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "You knock your feet on the floor and notice it sounds a bit hollow."
        sleep 2
        echo "Hidden floorboards huh, whoever built this manor is a sneaky devil."
        sleep 2 
        echo "I think I need something to pry this floorboard open though.";;
        s ) echo "These walls are gorgeous, I wonder who made them?" ;;
        e ) ./manor2.sh
        	exit ;;
        w ) echo "If I need to stay the night I might have to do it here";;
        #logic for the crowbar, if the user has it then they can use it to get the floppydisk. If not it says they dont have anything they could use
        u) barstate=`cat ../logic/barlogic.ben`
		if [ "$barstate" = "yes" ]; then
		sed -i='' 's/no/yes/' ../logic/floppylogic.ben
		echo "You wedge the crowbar firmly into the gap and pull open the center floorboard to find a small box."
		sleep 2
		echo "You open it up to find a single floppy disc, but you see signs that someone has recently been here"
		sleep 2
		echo "Well, I might as well see whats on this bad boy"
		
		else 
		echo "It doesn't seem like I have anything in my inventory that could help here. Maybe if I had a crowbar I could open it?"
		fi
		;;
		#Tells the user that they need to use u if they have the crowbar
	h )  barstate=`cat ../logic/barlogic.ben`
            if [ "$barstate" = "on" ]; then
                echo " This is not the command you're looking for (Press u to open the floorboard)."
                
            else
                echo "Hmm, the floorboard seems to be shut tight. I wonder what i can use to open it?."
            fi 
            ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
