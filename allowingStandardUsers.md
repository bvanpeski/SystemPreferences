# Allowing Standard Users to Modify Sytem Settings
There are some parts of System Settings that cannot be modified by users without admin credentials. You can leverage the defaults command to unlock parts of the System Settings pane to allow standard users without admin privelages to modify them. I've included some examples below.

### Allow Battery and Date & Time Access
```
#!/bin/zsh
# Created on 8/3/2023

# This script unlocks the Battery and Date & Time sections of System Preferences,
# allowing standard users to modify the settings in that pane without unlocking 
# using admin credentials.

# Unlock System Preferences before unlocking specific panes:
/usr/bin/security authorizationdb write system.preferences allow

# Unlock Battery pane and Date & Time pane:
/usr/bin/security authorizationdb write system.preferences.battery allow
/usr/bin/security authorizationdb write system.preferences.datetime allow

exit 0
```

### Allow Printer Install
```
#!/bin/zsh
# Created on 8/3/2023

# This script unlocks the Printer section of System Preferences and adds all users to the lpadmin
# group, allowing standard users to modify the settings in that pane without unlocking 
# using admin credentials and install printers.

# Unlock System Preferences printer pane.
/usr/bin/security authorizationdb write system.preferences.printing allow
/usr/bin/security authorizationdb write system.print.operator allow

# Adding all users to lpadmin group to allow adding printers.
/usr/sbin/dseditgroup -o edit -n /Local/Default -a everyone -t group lpadmin
/usr/sbin/dseditgroup -o edit -n /Local/Default -a everyone -t group _lpadmin

exit 0
```
