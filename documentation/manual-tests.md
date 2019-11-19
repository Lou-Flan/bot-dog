## Manual Tests

| Feature                              | Description                                                  | Expected Result                                              |
| :----------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Enter username from the command line | Users should be able to parse their name as an argument which is stored in the app in an array; ARGV. If the user forgets to enter their name as an argument in the CLI, the program should prompt the user to enter their name before the main application begins. | When parsing the users name as an argument from CLI, the users name should be puts to the screen after the opening animation has commenced. The app should then continue to run and use the user name throughout. |
| Exit the app at any time             | At any point during the application running, users should be able to enter '9' and the application end. | After entering '9', BotDog will say goodbye to the user and the application will exit. |
| Menu                                 | Throughout application running, a menu should be on the screen to give the user options of what they can do. | The menu should appear after the opening screen and whenever a user selection is required. |

