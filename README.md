# Roblox-Galaxy-Perfect-Warp
An AutoHotKey script that uses Galaxy's warp formula to automatically calculate and warp any distance with very good accuracy.
Welcome to Perfect Warp v6.1.1! This script will take your input of warp distance and use the warp formula to automatically
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

# [Go to Download](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/releases/tag/PW6.1.1)
### Note: The script requires a little bit of setup

# How does it work?
This script uses the warp formula to calculate how long to wait before warping.

The formula is: `100*2^X`

When you press V, X starts at 1 and increments by 0.5 every 0.61313 seconds. (Basically each notch showing a number is an increase in X of 0.5.)

# Getting Started with Perfect Warp v6.1.1

## Download AutoHotKey:
If you haven't already, download AutoHotKey. Here's the link to the official website:
https://www.autohotkey.com/

## Coordinate Setup:

After release V6.1.1, coordinate setup is as easy as ever. The first and most important thing
is to make sure that all the contents in the "Perfect Warp V6.1.1" remain in the same folder
so the script can reference them. To setup your coordinates is very simple. You're going to want
to run the "setup_coords" script. (If you already set it up with V6.1, there's no need to get V6.1.1)


![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/c0185d44-0785-47af-b09b-f25e66c940a3)


Once that is running, you should see a tooltip giving you directions. You're going to want to
go into Galaxy, press V to initiate a warp, and hover over the GREEN "Activate (V)" button that appears during warping. 
Make sure you are hovering over the green part and not the white text. Once you are, simply press CTRL+J and
your script will automatically record the coordinates, and the script is ready for use!


![image](https://github.com/XanBelOr/Roblox-Galaxy-Perfect-Warp/assets/40677753/fbf3da82-f9aa-4531-8531-d5ee9e9680af)


# Screen Size Consistency:

Perform the setup in your preferred screen size.
The script will work only in the screen size used during setup. For instance, if you set it up in fullscreen, make sure to always use it in fullscreen.
With these steps, your Perfect Warp v6.1.1 script will be ready to use!

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

# In depth explanation
The Galaxy developers think that I do not have the correct warp formula. This explanation should show that this is indeed the correct formula (100*2^x).
To prove the warp equation works, you can test the values with all the X values that are shown on the warp bar. Remember, it starts at 1 and
increases by 0.5 for each "notch" on the warp bar that shows a value. The values displayed on the bar are rounded for simplicity.
Feel free to verify these on a calculator.

```
100*2^1 = 200
100*2^1.5 = ~282.8427 (shown as 283 on warp bar)
100*2^2 = 400
100*2^2.5 = ~565.6284 (shown as 566)
100*2^3 = 800
100*2^3.5 = ~1131.37 (shown as 1.1K)
100*2^4 = 1600
100*2^4.5 = ~2262.74 (shown as 2.3K)
100*2^5 = 3200
100*2^5.5 = ~4525.48 (shown as 4.5K)
100*2^6 = 6400
100*2^6.5 = ~9050.97 (shown as 9.1K)
100*2^7 = 12800 (shown as 13K)
100*2^7.5 = ~18101.93 (shown as 18K)
100*2^8 = 25600 (shown as 26K)
100*2^8.5 = ~36203.87 (shown as 36K)
100*2^9 = 51200 (shown as 51K)
100*2^9.5 = ~72407.73 (shown as 72K)
100*2^10 = 102400 (shown as 102K)
100*2^10.5 = ~144815.47 (shown as 145K)
100*2^11 = 204800 (shown as 205K)
100*2^11.5 = ~289630.94 (shown as 290K)
100*2^12 = 409600 (shown as 410K
```
As you can see here, the equation is consistent with all the values on the warp bar, which were rounded. Then the script takes into
consideration that X starts at 1 and increases by 0.5 every 0.61313 seconds (0.81482 per second), then it calculates the amount of time
needed to warp the distance you entered. 

