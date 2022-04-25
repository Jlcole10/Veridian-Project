#!/bin/bash

clear

# Logic in the game is stored in .ben files. This sample has just one 'logic' file.
# You can add more logic files by simply adding a 'sed' command and appropriate .ben file.
# First off, let us reset the game logic. Use this as an example.

sed -i='' 's/on/off/' ../logic/leverlogic.ben
sed -i='' 's/yes/no/' ../logic/branchlogic.ben
sed -i='' 's/yes/no/' ../logic/barlogic.ben
sed -i='' 's/yes/no/' ../logic/floppylogic.ben



# Who doen't love ASCII text, right?
# Next up, let's initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo

# Next up, let's load in the initial introduction. Script is also stored in .ben files.
sleep 5
file2="../script/opening.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file2"
read -p "Press [ENTER] to start..."

#Okay, now that the introduction is out of the way, we can start the first room!
clear
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
sleep 1

# Here's where you introduce the room to the player. Be sure to tell them if there
# Are exits - but don't give too much away. Make it fun for them to explore!
echo
echo "The air is cold and brittle."
sleep 5
echo "You feel the soft murmur of the animals passing by,"
echo "yet the gaze of something mysterious still lingers."
sleep 5
echo "You stand up, head feeling hazy from the fall wind."
sleep 5
echo "Unaware of your surroundings you start looking around."
sleep 5
echo 
echo "You ruffle around your pockets and find a map! However its a bit ripped"
echo "Still, you can see areas to the north, east, south and west."
echo 
echo
echo "What would you like to do?"

# Now we wait for their response - and send them somewhere accordingly.
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
		u ) echo "There's nothing you can use right here." ;;     # Something to say? You can also just echo.
		h ) echo "You give yourself a quick hug. It's not very satisfying." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
