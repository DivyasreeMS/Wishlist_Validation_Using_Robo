Written By Divyasree MS
Date :11/04/2021

The below scenario has been automated using RobotFramework.

Requirements to Execute the script : 
-Python2.7
-Robot Framework
-wxPython for Ride IDE
-Robot Framework Ride
-Selenium2Library
Open the Ride -> import the testcase and execute Wishlist_Validation_Using_Login.robot

Instruction to install : https://www.tutorialspoint.com/robot_framework/robot_framework_environment_setup.htm


TestCase : Wishlist_Validation_Using_Login.robot
- Open browser https://www.westwingnow.de 
- Open Mobel 
- Click on wishlist icon of 1st item
- Login using existing credentials 
- After successful Login , goto Wishlist and delete the item

Enhancements to be done :
- Sleep can be replaced with a function, which wait for page to load before proceeding
- Couple of Absolute Xpaths can be replaced with relative xpaths to make the script more reliable 
- Validation on Login details( such as if password/ user name is wrong, giving an option to reset the same)
- Screenshot can be taken at each stage and can do image compare (through this we can make sure specific product is being added)
 
