# **Software Development Plan**



## Statement of Purpose and Scope



#### What will this application do?

This application is a Tamagotchi style game where the user feeds, pats and plays with a dog that lives in the CLI. 

####  What problem is this application solving?**

Due to little time, small city homes and many offices not allowing pets at work, many developers miss out on having a pet dog. BotDog can be visited any time in the CLI so is the preffered choice of pet by landlords and bosses alike.

#### **Who is the target audience for this application?**

The target audience is developers who love dogs.

#### **How will the target audience use this application?**

Developers will use this application anytime they need a break from coding and have access to a computer with BotDog installed. The application can be accessed from the command line.



## Features



**1. Feed BotDog**: Feed will be a loop with increment counter stored in an array, each time the user selects to feed, the counter will increase by one. Once the counter is equal to three, BotDog will poop in the terminal and the counter will reset to zero.

**2. Pat BotDog**:  Pat will be a loop with increment counter stored in an array, each time the user selects to pat, the counter will increase by one. If the counter reaches three, BotDog will fall asleep and the application will quit.

**3. Play with BotDog**:  Play will be a loop with increment counter stored in an array, each time the user selects to play, the counter will increase by one. If the counter reaches three, BotDog will urinate in the terminal and the counter will reset to zero.

**4. Menu Screen**: There will be a method containing menu options for the user to select from throughout the app.



\- use of variables and the concept of variable scope
\- loops and conditional control structures
\- error handling



## **User Interaction and Experience**

#### **How the user will find out how to interact with/use each feature**

The user will be welcomed to the application with an animation of BotDog and a menu of options to select from. 

#### **How the user will interact with/use each feature**

The user will need to type pre-determined commands into the terminal to interact with the app. The options menu will be present on the screen whenever a selection needs to be made. Each time a selection is made, 'tty-progressbar' will commence, followed by either ascii art or an ascii animation plus sound via mac-say.

#### **How errors will be handled by the application and displayed to the user**

The app utilises conditional loops and begin/rescue to handle errors, if the user enters an invalid selection, they will be presented with an error message and sound from BotDog. The selection menu will also be printed to screen to remind the user of valid selections.

The app is also only functional on mac, the bash script provided will check if the users operating system is Mac before running the application. If the user is not using mac, an error message will be printed to the CLI.



## **Control Flow Diagram**

![control-flow-diagram](/Users/louiseflanagan/Documents/coder-academy/LouiseFlanagan_T1A3/documentation/control-flow-diagram.jpg)