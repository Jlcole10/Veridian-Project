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
echo "You wander into a vast forest,"
sleep 1
echo "trees towering over you for as far as the eye can see."
sleep 1
echo "Wow you think to yourself, I wonder how old this oak forest is,"
sleep 2
echo "Running your hands along the base of a large oak you see a strange piece of paper."
sleep 1
echo "The language is mostly unintelligible, but you can make out an E and a R ."
sleep 1
echo "The only exit seems to be to the east, the way you came"
sleep 1
echo "What would you like to do?"

 
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "I think id rather not get lost, so maybe ill turn back " ;;
        s ) echo "Man this tree is rather...uh...treelike" ;;
        e ) ./mainroom.sh
            exit ;;
        w ) echo "You look at the trees in awe, almost forgetting you're on an adventure and not a picnic." ;;
        # more branchlogic stuff. This allows you to get the stick
		 u ) branchstate=`cat ../logic/branchlogic.ben`
            if [ "$branchstate" = "yes" ]; then
                echo "I think one stick is enough, unless you're talking pretzel sticks."
            else
                sed -i='' 's/no/yes/' ../logic/branchlogic.ben
                echo "I mean, I guess there's nothing wrong about grabbing a stick. It might be useful soon."
            fi 
        ;;
		h ) echo "You check your pockets and find a ripped up map, some pieces of gum, and a strange watch." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
