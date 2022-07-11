The automation test is scriped with Robot framework 

Step 1: Install Python
Visit the following website to download Python software.
https://www.python.org/downloads/
Download the latest version for your operating system (eg: Windows)

Step 2: Configure Environment Variables
After installing Python and pip, you should configure environment variables by adding the path. To do so,
Go to System - > Advanced System Settings - > Advanced - > Environment Variables

Step 3: Install Robot Framework
Open the command prompt and navigate to the python folder and type the following command:
Pip install robotframework
Robot Framework is successfully installed. You can check it using the version command.
robot --version

Step 4: Install wxPython
Download wxPython software from the following link:
Open the command prompt and type the following command:
Pip install –u wxPython
Now, wxPython version 4.1.0 is successfully installed.

In order to execute the testcase , open the command line and navigate to the proper folder and type:
robot test.robot

![Screenshot from 2022-07-11 11-14-24](https://user-images.githubusercontent.com/25046502/178187490-ebe42615-0c41-4ce0-b0bd-17eb16669fb0.png)
