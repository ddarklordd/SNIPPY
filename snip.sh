#!/bin/bash
if [ "$#" -eq 0 ]
then
  echo "No arguments supplied"
  exit 1
fi
cd $1  # change to path where you need to save the snip, that is the first arhument that my script expect
echo "saving in ${1}"
count=0
while [ $count -lt 100 ];
do
    echo "select the region the region to save"
    scrot -s snip.png
    filename="image${count}.png"
    count=$((count+1))
    mv snip.png $filename
    echo "SAVED!!.Do you want to take another snip? [''Esc'' to terminate ]"
    read -s -n1  key #n1 -Returns after reading the specified number of characters while honoring the delimiter to terminate early, Does not echo the user's input.
    case $key in
        $'\e') #esc key pressed
                echo "Escape pressed"
                break
        ;;
    esac
done
echo “Thanks for using the snipper!!!”
