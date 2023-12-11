# Roblox-Galaxy-Perfect-Warp
An AutoHotKey script that uses Galaxy's warp formula to automatically calculate and warp any distance with very good accuracy.
Welcome to Perfect Warp v6.1! This script will take your input of warp distance and use the warp formula to automatically
calculate how long you need to wait to warp that far, then perform the warp for you, all automatically!

### Demonstration
https://www.youtube.com/watch?v=qgx-sqr5XWk

# [Go to Download](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/releases/tag/PW6.1)
### Note: The script requires a little bit of setup

# How does it work?
This script uses the warp formula to calculate how long to wait before warping.

The formula is: `100*2^X`

When you press V, X starts at 1 and increments by 0.5 every 0.61313 seconds. (Basically each notch showing a number is an increase in X of 0.5.)

# Getting Started with Perfect Warp v6.1

## Download AutoHotKey:
If you haven't already, download AutoHotKey. Here's the link to the official website:
https://www.autohotkey.com/

## Coordinate Setup:

Use the provided "clipboardcords" script to obtain the X and Y coordinates of the GREEN "Activate (V)" button that appears during warping.
Make sure you are hovering over the green part and not the white text.

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/786e437a-9342-464a-8211-f7b841e03d61)

Replace 932 and 790 with the coordinates you got.



## Script Configuration:

Right-click the "Pefect Warp 6.1" script and select "edit script."

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/7cdba3e9-295f-4644-b38a-d711c9c2a108)


Enter the X coordinate at "Xcordhere" and the Y coordinate at "Ycordhere" in the script.

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/57a96a6a-3e87-4fec-89ea-860d8f882414)


Save your changes by pressing Ctrl+S.


# Screen Size Consistency:

Perform the setup in your preferred screen size.
The script will work only in the screen size used during setup. For instance, if you set it up in fullscreen, make sure to always use it in fullscreen.
With these steps, your Perfect Warp v6.1 script will be ready to use!

## How to use:
Once your script is ready, press the numpadplus key. An input box will pop up. Type the warp value you want but
divided by 1000. For example, typing "51" will warp you 51k. When you do, hit enter or press "ok" and the script will
automatically time the warp for you.

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/a0d5cb5d-da09-4d4c-b585-8fe86551437e)



## Manual Adjustment:
In most cases, the script should be accurate enough to work without any adjustments. However, some servers may experience
more (or less) lag due to where the server is being hosted. To account for this, I have added a second box to manually
adjust the timing to account for this. If you overwarp, you're going to want to put in a NEGATIVE number, and if you
underwarp, you're going to want to put in a POSITIVE number. It's unlikely you'll need a huge adjustment, so try to
only give a small adjustment (like 5 ms or -5ms).

## Will I get banned for using this?
If you are caught, yes. However, since this script is NOT injected into your client, it is undetectable. The only way
for you to be caught is to have a screen recording of you using it. To ensure you can still record your screen, download
OBS and you can have it only record the Roblox screen, so it won't capture the script.




