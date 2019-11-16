#!/bin/bash

function start()
{
    # basic Calendar, Email, Email
    if [[ $1 = "basic" ]];
    then
        echo "starting a new basic session..."
        open -na Google\ Chrome --args --new-window "https://calendar.google.com/calendar/r" "https://mail.google.com/mail/u/0/?tab=rm#inbox" "https://mail.google.com/mail/u/1/#inbox"

    # ics46b Canvas, Piazza
    elif [[ $1 = "ics46" ]];
    then
        echo "starting new ics46b session..."

        if [[ $2 = "project" ]];
        then
            echo "opening apps..."

            osascript -e 'tell app "Terminal"
                do script "ssh ics46b@172.16.109.128"
            end tell'

            open -a Cisco\ AnyConnect\ Secure\ Mobility\ Client
            open -a VMWare\ Fusion
            open -na Visual\ Studio\ Code --args --new-window

        fi

        open -na Google\ Chrome --args --new-window "https://canvas.eee.uci.edu/courses/21202" "https://piazza.com/class/k0ubcdoccgr6z4"

    # cs121 Canvas, Piazza
    elif [[ $1 = "cs121" ]];
    then
        echo "starting new cs121 session..."
        open -na Google\ Chrome --args --new-window "https://canvas.eee.uci.edu/courses/20308" "https://piazza.com/class/k13vk62yzaj5en"

    # ics1391 Canvas, Google Sheets, Piazza
    elif [[ $1 = "ics139" ]];
    then
        echo "starting new ics139w session..."
        open -na Google\ Chrome --args --new-window "https://canvas.eee.uci.edu/courses/19893" "https://docs.google.com/spreadsheets/d/1Z6pX2kjbhFg4tht94-Dzl3M9JVfLrXs5Kw4ZWhJf62M/edit?usp=sharing" "https://piazza.com/class/k0zn85moox33ez"
    
    else
        echo "enter a valid course name!"
    fi
}
