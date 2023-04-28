# NOTE:This tool CANNOT bypass the 7, 14, 30 day unlock time.

# Instructions

# WARNING:Do not reboot your device while performing the instructions or else you'll have to start over the unlock process!

To use this:

1)Install Python 3.9 or newer (tick the "Add Python X.X to PATH" option if you are using Windows)

https://www.python.org/downloads

2)After installing, open up Terminal (or Command Prompt) and enter:

```
pip3 install -r requirements.txt
```

3)Run the program and do what program tells you to do

Windows: ```py -3 main.py``` or ```python main.py```

Linux: ```python3 main.py``` or ```chmod +x main.py && ./main.py```

if the code succeeds it will give you a really long string which is the unlock token, put this into a file with a hex editor, name it `token`

4)Download https://github.com/penn5/fastbrute

5)Run interpreter.py just like shown in step 3

6)Type:
```
=token
oem unlock
```
The device will factory reset and unlock successfully.

# F.A.Q


1.
   Q)I tried to run the code and it said "python.exe is not recognized"

   A)You didn't install Python properly,re-read the instructions.
   
2.
   Q)Fastbrute gives "Error 0xffffffff" and reboots device.

   A)I'm assuming you rebooted the device during unlocking which you shouldn't.Don't reboot the device during the unlock process or else the unlock token will change.
   
3.
   Q)The code says my fastboot token is invalid or fastboot says "unknown command".

   A)Try using `fastboot getvar token` instead of `fastboot oem get_token`
   
4)
   Q)The code gives "Unknown error"
   
   A)Open a new issue,post a screenshot of the output there and i will try to figure out what's wrong.
   
# Credits

@GiorgioUghini
@penn5
@notmarek
@pcfighter
@rien333
