# **Software Development Plan**

## **Statement of Purpose and Scope**

### **What will this application do?**

This application is a Tamagotchi style game where the user feeds, pats and plays with a dog that lives in the CLI. 

### **What problem is this application solving?**

Due to little time, small city homes and many offices not allowing pets at work, many developers miss out on having a pet dog. BotDog can be visited any time in the CLI so is the preffered choice of pet by landlords and bosses alike.

### **Who is the target audience for this application?**

The target audience is developers who love dogs.

### **How will the target audience use this application?**

Developers will use this application anytime they need a break from coding and have access to a computer with BotDog installed. The application can be accessed from the command line.

## **Features**

**1. Feed BotDog**: Feed will be a loop with increment counter stored in an array, each time the user selects to feed, the counter will increase by one. Once the counter is equal to three, BotDog will poop in the terminal and the counter will reset to zero.

**2. Pat BotDog**:  Pat will be a loop with increment counter stored in an array, each time the user selects to pat, the counter will increase by one. If the counter reaches three, BotDog will fall asleep and the application will quit.

**3. Play with BotDog**:  Play will be a loop with increment counter stored in an array, each time the user selects to play, the counter will increase by one. If the counter reaches three, BotDog will urinate in the terminal and the counter will reset to zero.

**4. Menu Screen**: There will be a method containing menu options for the user to select from throughout the app.

## **User Interaction and Experience**

### **How the user will find out how to interact with/use each feature**

A menu of options will be displayed to the user in the terminal, prompting the user to type and enter their selction.


### **How the user will interact with/use each feature**

The user will need to type pre-determined commands into the terminal to interact with the app.


### **How errors will be handled by the application and displayed to the user**

If errors occur, an error display will be printed to the terminal as a message from BotDog, e.g 

```
"Oops I don't understand what you just said. Would you like to do one of these?"
``` 

The menu of options will also be displayed to remind the user of what commands they can input.