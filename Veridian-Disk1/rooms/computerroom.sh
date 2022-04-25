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
echo "You open the door and find an unsurprisingly barren room."
sleep 1
echo "However, on the desk you see a strange device."
sleep 2
echo "Hmm, this seems to be a personal computer. I've read about them in the nav."
sleep 2
echo "You sit down at the desk and power on the unit, it croaks back to life from its eternal rest. Showing the APPLE II startup screen."
sleep 2
echo "'I wonder if ill find any information about whats going on here', you think as you tense up in anticipation."
sleep 2
echo "ENTER PASSWORD"
sleep 1
echo "You've gotta be kidding me"
sleep 2
echo "What would you like to do?"

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Hmm, there doesn't seem to be any signs of a password here." ;;
        s ) echo "Eww, who put gum under this desk....nasty." ;;
        w ) ./manor2.sh
            exit ;;
        e ) echo "Well there's no password on the ceiling....not sure why I even checked." ;;
		u ) echo "Well I guess I might as well try and figure out what this password is."
		sleep 2
		echo "You look around and try and find any semblance of a password,"
		echo "but you can only find the phrase" 
		sleep 2
		echo "'Remember Where Your From' scribbled on the desk."
		sleep 1
		echo "ENTER PASSWORD"
			read choice
				if [ $choice = "AETHER" ]           
			then
 			   echo "PASSWORD ACCEPTED WELCOME [REDACTED]."
 			   sleep 5
 			   ./computer1.sh
 			   exit 
			else
    				echo "WRONG PASSWORD, TRY AGAIN."
		fi

            
           

        ;;
		h ) echo "If you payed attention you should know what the password is silly goose." ;;
        * ) echo "I'm sorry, I don't understand you. Commands are: n, e, s, w, u and h.";;
    esac
done

esac
exit
