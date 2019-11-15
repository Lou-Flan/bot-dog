# **Feature One **

**Parse user name as an argument from the command line**

Users should be able to parse their name as an argument which is stored in the app in an array; ARGV. If the user forgets to enter their name as an argument in the CLI, the program should prompt the user to enter their name before the main application begins.



**Expected Result**

When parsing the users name as an argument from CLI, the users name should be puts to the screen after the opening animation has commenced. The app should then continue to run.



**Actual Result**

1. User entered the following to run the app with name parsed as argument:

   ``` $ ruby bot-dog.rb Louise```

2. ARGV is stored in variable ```user_name```.

3. Opening animation commenced and completed.

4. Variable ```user_name``` is called and the specified value is puts to screen.

5. Traceback error in relation to 'gets' on line 187 of code.



_**Error in CLI:**_

![ARGV_broken](/Users/louiseflanagan/Documents/coder-academy/LouiseFlanagan_T1A3/tests/screenshots/ARGV_broken.png)

**_Code_**:

![ARGV_code](/Users/louiseflanagan/Documents/coder-academy/LouiseFlanagan_T1A3/tests/screenshots/ARGV_broken_code.png)



**Solution**

When using ```gets``` with ```ARGV```, gets reads the value of ARGV if there is anything within it so ARGV needs to be cleared before initiating gets.

_**Code**_:

![ARGV_code](/Users/louiseflanagan/Documents/coder-academy/LouiseFlanagan_T1A3/tests/screenshots/ARGV_working_code.png)

_**CLI**_

![ARGV_code](/Users/louiseflanagan/Documents/coder-academy/LouiseFlanagan_T1A3/tests/screenshots/ARGV_working.png)