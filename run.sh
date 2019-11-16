#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    osascript -e "set Volume 5"
    ruby bot-dog.rb Hooman        
else
    echo "Thanks for downloading. Unfortunately BotDog is refusing to come out and play because you don't have a mac. Try again when you get one."
fi

