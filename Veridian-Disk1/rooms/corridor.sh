#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
#This room is where the user gets the crowbar 
barstate=`cat ../logic/barlogic.ben`
            if [ "$floppystate" = "yes" ]; then
            sleep 1
            echo "The door is still locked, but there might be something I could use this crowbar with"
            sleep 5
            ./manor2.sh
 			   exit 
 			   else
echo
sleep 1
echo "You walk forward, cautiously taking your time to observe your settings as you approach the door."
sleep 3
echo "But every time you take a step forward, it seems like you're not even getting closer to do the door"
sleep 3
echo "Is this...a wall?."
sleep 2
echo "You place your hands on what seems to be an invisible wall, running your hands along it until you find an opening."
sleep 3
echo "An Invisible maze huh, someone wants to keep this place very hidden I see."
sleep 3
echo "A small dial catches your attention, with a set of instructions inscribed underneath"
sleep 2
echo "To access the door you need to set the numbers in the correct order." 
echo "The numbers 12345 are set in a random order"
echo "When they are set in order the path will clear" 
while true; do
    read -p "> " u
    case $u in
    u)
echo "ENTER NUMBER"
#another read choice thing here, if the user puts in the right number then they continue. If not it sets them back so they can try again.
read  choice
		if [ $choice = "54321" ]           
 			 
		echo "You've gotta be kidding me....the code was actually 54321"
		sleep 2
		echo "You walk forward to the door and see a strange looking lever"
		sleep 2
		echo "You give it a good yank until....CLANK...."
		sleep 2
		echo "The handle of the lever breaks off and as you look at it you realize its a crowbar that had been duck taped into a lever"
		sleep 2
		echo "Jeez whoever made this place needs to take a course on better security measures"
		sleep 2
		echo "You walk up to do the door and realize that it has no handle or knob to open it"
		sleep 2
		echo "Well great, the door can't even be opened...maybe I can use this crowbar for something though"
		sed -i='' 's/no/yes/' ../logic/barlogic.ben
		sleep 5
		./manor2.sh
 			   exit 
else echo "WRONG....TRY AGAIN"
fi 
;;
			
esac
exit
