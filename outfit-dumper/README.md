# INFORMATION
* Using a command in game will allow you to quickly log a file into this resources root directory allowing for quick copy/paste into your EUP UI. Example below of what is logged.

['New Outfit'] = { 
    category = 'Uncategorized',
    ped = 'mp_m_freemode_01',
    props = {
        { 0, 12, 0 },
        { 1, 5, 1 },
    },
    components = {
        { 11, 205, 3 },
        { 4, 36, 1 },
        { 6, 52, 0 },
        ...
    }
}

* Simply change ['New Outfit'] to what you want in your menu as well as the "category".

# Features
* Export your ped’s props (hats, glasses, watches, etc.)

* Export your ped’s components (uniforms, pants, shoes, vests, etc.)

* Each /saveoutfit creates a new file (with timestamp) — nothing is overwritten.

* Ready-to-paste Lua block for use in configs.

# INSTALLATION
* drag "outfit-dumper" into your resources
* ensure outfit-dumper

# USAGE
* Using MP Ped create a character
* /saveoutfit
* Then open "outfit-dumper" to find a new file labled something along the line of "outfit_2025-09-29_12-34-56.txt" and once you open that you will find a code block similar to the example above. 
* Copy and Paste this code block into your EUP Menu config. 
* Don't forget to change the information in the [ ] and change the "category" to match your menu option.
* Restart your server
* Done!


