# **Software Development Plan**



## **Statement of Purpose and Scope**



#### What will this application do?

This application is a Tamagotchi style game where the user feeds, pats and plays with a naughty dog that lives in the CLI. 

####  **What problem is this application solving?**

Due to little time, small city homes and many offices not allowing pets at work, many developers miss out on having a pet dog. BotDog can be visited any time in the CLI so is the preffered choice of pet by landlords and bosses alike.

#### **Who is the target audience for this application?**

The target audience is developers who love dogs.

#### **How will the target audience use this application?**

Developers will use this application anytime they need a break from coding and have access to a Mac. Once downloaded, the application can be accessed from the command line; users will need to input simple commands to interact with BotDog in the CLI.



## **Features**

BotDog will feature three primary means of interaction; feed, pat or play.

**1. Menu Screen**: The application features a method which prints a menu to the screen giving the user four choices of input: press 1 to pat, press 2 to feed, press 3 to play or press 9 to quit. The menu method is called within a game play loop to print to screen everytime a selection is required. The loop contains if/else statements to further handle errors or incorrect user input.

**2. Feed/Pat or Play with BotDog**: The user has the option to feed, pat or play with BotDog with specified key inputs. Each option has it's own defined method and method containing ASCII art. During gameplay, the methods are called inside a loop with corresponding increment counters stored in arrays. Each time the user inputs one of the options, the respective counter will increase by one. Each method has a unique action when it's respective counter reaches 3. The gameplay loop utilises if/else statements to gracefully handle errors and incorrect user input.

**3. User can input their name from the command line**: The user has the option to run the bash script for a default user name or personalise their experience by entering their name as an argument from the command line. The data stored in ARGV is then saved into a variable for use throughout the app and ARGV is cleared to allow use of gets. The app will check the length of ARGV upon open and prompt the user to enter their name if they did not do so in the command line.



## **User Interaction and Experience**

#### **How the user will find out how to interact with/use each feature**

The user will be welcomed to the application with an animation of BotDog and a menu of options to select from. 

#### **How the user will interact with/use each feature**

The user will need to input pre-determined commands into the terminal to interact with the app. The options menu will be present on the screen whenever a selection needs to be made. Each time a selection is made, 'tty-progressbar' will commence, followed by either ascii art or an ascii animation plus sound via mac-say to let the user know that something is happening.

#### **How errors will be handled by the application and displayed to the user**

The app utilises conditional loops and begin/rescue to handle errors, if the user enters an invalid selection, they will be presented with an error message and sound from BotDog. The selection menu will also be printed to screen to remind the user of valid selections.

The app is also only functional on mac, the bash script provided will check if the users operating system is Mac before running the application. If the user is not using mac, an error message will be printed to the CLI.



## **Control Flow Diagram**

![control-flow-diagram](/./documentation/control-flow-diagram.jpg)



## **Implementation Plan**

Trello Board: https://trello.com/b/gD3uUVfs/botdog

I used Trello to manage implementation of BotDog; please access the Trello board via the above link. I have also outlined the tasks in the below table.



| MVP Feature    | Checklist                                                    | Deadline      |
| -------------- | ------------------------------------------------------------ | ------------- |
| Play           | - Design method to hold function<br />- Display a mesage each time the user decides to play<br />- Add an incremental counter<br />- When the counter reaches three, BotDog does something<br>- Display a screen/message to let the user know that their action has been completed | 15th November |
| Pat            | - Design method to hold function<br />- Display a mesage each time the user decides to feed<br />- Add an incremental counter<br />- When the counter reaches three, a message appears and the app closes<br/>- Display a screen/message to let the user know when BotDog has been fed | 15th November |
| Feed           | - Design method to hold function<br />- Display a mesage each time the user decides to feed<br />- Add an incremental counter<br />- When the counter reaches three, BotDog does something<br/>- Display a screen/message to let the user know that their action has been completed | 15th November |
| Menu           | - Menu should be puts to screen each time a selection is required<br/>- Menu should have all available options displayed to user<br />- Menu should prompt users for input<br />- Should be easy to read<br />- Should appear below the animation/art | 14th November |
| ARGV           | - Review how to use ARGV and store data in a variable<br />- Store ARGV in a variable to use throughout app<br />- Test that any data can be input to ARGV from the command line<br />- Add an if/else statement to check that a user has stored their name in ARGV upon running the app<br />- Clear ARGV to enable use of gets later in the script | 17th November |
| Game play loop | - Call methods for each play function within the game play loop<br />- User must be able to exit the loop and the game at any time<br />- Menu must be displayed within the loop<br />- Take user input to make game play selections<br />- Handle errors and incorrect user input with if/else statements | 16th November |