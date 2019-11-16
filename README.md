## Description

Due to little time, small city homes and many offices not allowing pets at work, many developers miss out on having a pet dog. 

**BotDog**  is a Tamagotchi style game where the user feeds, pats and plays with a dog that lives in the CLI.



Source code: https://github.com/Lou-Flan/bot-dog

Documentation: https://github.com/Lou-Flan/bot-dog/tree/master/documentation

- Software development plan
- Development log
- Manual tests
- Implementation plan (also available here: https://trello.com/b/gD3uUVfs/botdog)



##  System Requirements

BotDog utilies `afplay` which is Mac dependent. 

BotDog has only been tested on Mac OS Mojave version 10.14.6.



## Installation Instructions

1. If you do not have Ruby on your computer, follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/).
2. Clone the project files onto your computer from the source code here: https://github.com/Lou-Flan/bot-dog.
3. On the terminal command line, navigate to the bot-dog directory you just cloned.
4. If you do not have the 'bundler' gem installed on your computer, please enter the following code.

```
$ install bundler
```

4. Once 'bundler' has been installed, enter the following code to install the gems required for the application.

```
$ bundle install 
```



## Run Options

For a more personalised experience, run the application by inputting the following command.

```
$ ruby bot-dog.rb
```

You also have the option to enter your name as argument from the command line for use within the app.

```$ 
$ ruby bot-dog.rb name
```

### _Or_

Alternatively, you can run the application with the bash script supplied in the source code. This will give you a default user name within the app.

To do so you will need to run the following line of code before running the bash script.

```
$ chmod u+x run.sh
```

Then run the bash script.

```
$ ./run.sh
```



## Features

- Customise experience by entering name as an arg in command line

- Receives user input to make selection with unique outcomes

- 3 user play features including; feed, pat or play with BotDog

- ASCII art and ASCII art animations

- Ability to exit app at any time

  