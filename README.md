# Roblox-Galaxy-Perfect-Warp
An AutoHotKey script that uses Galaxy's warp formula to automatically calculate and warp any distance with very good accuracy.
Welcome to Perfect Warp v6.1! This script will take your input of warp distance and use the warp formula to automatically
calculate how long you need to wait to warp that far, then perform the warp for you, all automatically!


## Will I get banned for using this?
If you are caught, yes. However, since this script is NOT injected into your client, it is **undetectable**. The only way
for you to be caught is to have a screen recording of you using it. To ensure you can still record your screen, download
OBS and you can have it only record the Roblox screen, so it won't capture the script.

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/d514c5d9-00c7-4926-b846-be0ea598856b)


**OBS Download:** https://obsproject.com/

**Tutorial on how to record only specific windows:** https://www.youtube.com/watch?v=3iznaIB88AQ


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

After release V6.1.1, coordinate setup is as easy as ever. The first and most important thing
is to make sure that all the contents in the "Perfect Warp V6.1.1" remain in the same folder
so the script can reference them. To setup your coordinates is very simple. You're going to want
to run the "setup_coords" script.

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/c0185d44-0785-47af-b09b-f25e66c940a3)

Once that is running, you should see a tooltip giving you directions. You're going to want to
go into Galaxy, hover over the GREEN "Activate (V)" button that appears during warping. Make sure 
you are hovering over the green part and not the white text. Once you are, simply press CTRL+J and
your script will automatically record the coordinates, and the script is ready for use!

![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/fbf3da82-f9aa-4531-8531-d5ee9e9680af)

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



