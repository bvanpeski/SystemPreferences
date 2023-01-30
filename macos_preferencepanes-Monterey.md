# How to open every macOS System Preferences Pane

Here is a complete list of System Preferences Panes (as of macOS Monterey 12.2.1) and how to open them with a bash command. Not all panes support a URLScheme to open, but for those that do not you can use Applescript.

The macOS Ventura version of this list can be found [here](https://github.com/bvanpeski/SystemPreferences/blob/main/macos_preferencepanes-Ventura.md).

### Table of Contents

**Preference Panes**
* [AppleID](#apple-id-comapplepreferencesappleidprefpane) | [Family Sharing](#family-sharing-comapplepreferencesfamilysharingprefpane)
* [General](#general-comapplepreferencegeneral) | [Desktop & Screen Saver](#desktop--screensaver-comapplepreferencedesktopscreeneffect) | [Dock & Menu Bar](#dock--menu-bar-comapplepreferencedock) | [Mission Control](#mission-control-comapplepreferenceexpose) | [Siri](#siri-comapplepreferencespeech) | [Spotlight](#spotlight-comapplepreferencespotlight) | [Language & Region](#language--region-comapplelocalization) | [Notifications & Focus](#notifications--focus-comapplepreferencenotifications)
* [Internet Accounts](#internet-accounts-comapplepreferencesinternetaccounts) | [Passwords](#passwords-comapplepasswords) | [Wallet & Apply Pay](#wallet--apple-pay-comapplepreferenceswallet) | [Users & Groups](#users--groups-comapplepreferencesusers) | [Accessibility](#accessibility-comapplepreferenceuniversalaccess) | [Screen Time](#screen-time-comapplepreferencescreentime) | [Extensions](#extensions-comapplepreferencesextensions) | [Security & Privacy](#security--privacy-comapplepreferencesecurity)
* [Software Update](#software-update-comapplepreferencessoftwareupdate) | [Network](#network-comapplepreferencenetwork) | [Bluetooth](#bluetooth-comapplepreferencesbluetooth) | [Sound](#sound-comapplepreferencesound) | [Touch ID](#touch-id-comapplepreferencespassword) | [Keyboard](#keyboard-comapplepreferencekeyboard) | [Trackpad](#trackpad-comapplepreferencetrackpad) | [Mouse](#mouse-comapplepreferencemouse)
* [Displays](#displays-comapplepreferencedisplays) | [Printers & Scanners](#printers--scanners-comapplepreferenceprintfax) | [Battery](#battery-comapplepreferencebattery) | [Energy Saver](#energy-saver-comapplepreferencesenergysaverprefpane) | [Date & Time](#date--time-comapplepreferencedatetime) | [Sharing](#sharing-comapplepreferencessharing) | [Time Machine](#time-machine-comappleprefsbackup) | [Startup Disk](#startup-disk-comapplepreferencestartupdisk) | [Profiles](#profiles-comapplepreferencesconfigurationprofiles)


**How To**
* [How to find panes yourself](#finding-pane-ids-and-anchors)
* [Troubleshooting](#troubleshooting)

## System Preferences (com.apple.preferences)
`open "x-apple.systempreferences:com.apple.preferences"`

## Apple ID (com.apple.preferences.AppleIDPrefPane)
`open "x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane"`
`open "x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane?iCloud"` (iCloud specific)

## Family Sharing (com.apple.preferences.FamilySharingPrefPane)
`open "x-apple.systempreferences:com.apple.preferences.FamilySharingPrefPane"`

## General (com.apple.preference.general)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.general"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.general"' -e 'end tell'
```

## Desktop & Screensaver (com.apple.preference.desktopscreeneffect)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.desktopscreeneffect"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.desktopscreeneffect"' -e 'end tell'
```

## Dock & Menu Bar (com.apple.preference.dock)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.dock"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.dock"' -e 'end tell'
```

## Mission Control (com.apple.preference.expose)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.expose"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.expose"' -e 'end tell'
```

## Siri (com.apple.preference.speech)
`open "x-apple.systempreferences:com.apple.preference.speech"`

## Spotlight (com.apple.preference.spotlight)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.spotlight"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.spotlight"' -e 'end tell'
```

## Language & Region (com.apple.Localization)
`open "x-apple.systempreferences:com.apple.Localization"`

## Notifications & Focus (com.apple.preference.notifications)
Primary Pane: `open "x-apple.systempreferences:com.apple.preference.notifications"`
### Notifications Tab
`open "x-apple.systempreferences:com.apple.preference.notifications?Notifications"`
### Focus Tab
`open "x-apple.systempreferences:com.apple.preference.notifications?Focus"`

## Internet Accounts (com.apple.preferences.internetaccounts)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preferences.internetaccounts"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preferences.internetaccounts"' -e 'end tell'
```

## Passwords (com.apple.Passwords)
`open "x-apple.systempreferences:com.apple.Passwords"`

## Wallet & Apple Pay (com.apple.preferences.wallet)
`open "x-apple.systempreferences:com.apple.preferences.wallet"`

## Users & Groups (com.apple.preferences.users)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preferences.users"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preferences.users"' -e 'end tell'
```

## Accessibility (com.apple.preference.universalaccess)
`open "x-apple.systempreferences:com.apple.preference.universalaccess"`

## Screen Time (com.apple.preference.screentime)
`open "x-apple.systempreferences:com.apple.preference.screentime"`

## Extensions (com.apple.preferences.extensions)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preferences.extensions"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preferences.extensions"' -e 'end tell'
```

## Security & Privacy (com.apple.preference.security)
Primary Pane: `open "x-apple.systempreferences:com.apple.preference.security"`

### General Tab
`open "x-apple.systempreferences:com.apple.preference.security?General"`

### FileVault Tab
`open "x-apple.systempreferences:com.apple.preference.security?FDE"`

### Firewall Tab
`open "x-apple.systempreferences:com.apple.preference.security?Firewall"`

### Privacy Tab
If you want to prompt the user to unlock any of the panes for editing, you can do so using `open "x-apple.systempreferences:com.apple.preference.security?Advanced"`
* **Location Services:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_LocationServices"`
* **Contacts:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Contacts"`
* **Calendars**: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Calendars"`
* **Reminders:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Reminders"`
* **Photos:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Photos"`
* **Camera:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Camera"`
* **Microphone:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Microphone"`
* **Speech Recognition:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_SpeechRecognition"`
* **Accessibility:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"`
* **Input Monitoring:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_ListenEvent"`
* **Full Disk Access:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles"`
* Files and Folders: 
* **Screen Recording:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture"`
* **Media & Apple Music:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Media" `
* **HomeKit:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_HomeKit"`
* **Bluetooth:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Bluetooth"`
* User Availability:
* **Automation:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Automation"`
* **Developer Tools:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_DevTools"`
* Analytics & Improvements:
* **Apple Advertising:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Advertising"`

## Software Update (com.apple.preferences.softwareupdate)
`open "x-apple.systempreferences:com.apple.preferences.softwareupdate"`

## Network (com.apple.preference.network)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.network"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.network"' -e 'end tell'
```

## Bluetooth (com.apple.preferences.Bluetooth)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preferences.Bluetooth"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preferences.Bluetooth"' -e 'end tell'
```

## Sound (com.apple.preference.sound)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.sound"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.sound"' -e 'end tell'
```

## Touch ID (com.apple.preferences.password)
`open "x-apple.systempreferences:com.apple.preferences.password"`

## Keyboard (com.apple.preference.keyboard)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.keyboard"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.keyboard"' -e 'end tell'
```

## Trackpad (com.apple.preference.trackpad)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.trackpad"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.trackpad"' -e 'end tell'
```

## Mouse (com.apple.preference.mouse)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.mouse"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.mouse"' -e 'end tell'
```

## Displays (com.apple.preference.displays)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.displays"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.displays"' -e 'end tell'
```

## Printers & Scanners (com.apple.preference.printfax)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.printfax"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.printfax"' -e 'end tell'
```

## Battery (com.apple.preference.battery)
Primary Pane: `open "x-apple.systempreferences:com.apple.preference.battery"`

* **Usage History:** `open "x-apple.systempreferences:com.apple.preference.battery?usage"`
* **Battery:** `open "x-apple.systempreferences:com.apple.preference.battery?battery"`
* **Power Adapter:** `open "x-apple.systempreferences:com.apple.preference.battery?adapter"`
* **Schedule:** `open "x-apple.systempreferences:com.apple.preference.battery?schedule"`
* **Current Source (Either Battery or Power Adapter depending on current sournce):** `open "x-apple.systempreferences:com.apple.preference.battery?currentSource"`

## Energy Saver (com.apple.preferences.EnergySaverPrefPane)
`open "x-apple.systempreferences:com.apple.preferences.EnergySaverPrefPane"`

## Date & Time (com.apple.preference.datetime)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.datetime"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.datetime"' -e 'end tell'
```

## Sharing (com.apple.preferences.sharing)
`open "x-apple.systempreferences:com.apple.preferences.sharing"`

## Time Machine (com.apple.prefs.backup)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.prefs.backup"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.prefs.backup"' -e 'end tell'
```

## Startup Disk (com.apple.preference.startupdisk)
URLScheme not supported. Applescript alternative below.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.startupdisk"
end tell
```
Bash-ready version:
```
osascript -e 'tell Application "System Preferences"' -e 'activate' -e 'set the current pane to pane id "com.apple.preference.startupdisk"' -e 'end tell'
```

## Profiles (com.apple.preferences.configurationprofiles)
`open "x-apple.systempreferences:com.apple.preferences.configurationprofiles"`


# Finding Pane IDs and Anchors
Let's say you come across this file, I haven't updated it, and a new version of macOS has come out that adds new System Preference panes or changes the names of existing ones. How do you discover where they are? I'm glad you asked.

### Identifying pane names and anchors
You can find the pane and associated deeplink anchors with some applescript:
Paste the code below into `Script Editor.app`, Open System Prefrence to the pane you want to identify, and run the script. It will output the name of the current pane and any associated anchors.
```
-- Open System Preferences.app and click into desired pane/setting. Then, run this script to find out name (Pane ID) and any anchors.

tell application "System Preferences"
	set AppleScript's text item delimiters to ", "
	set CurrentPane to the id of the current pane
	get the name of every anchor of pane id CurrentPane
	set CurrentAnchors to get the name of every anchor of pane id CurrentPane
	set the clipboard to CurrentPane
	display dialog "Current Pane ID: " & CurrentPane & return & return & "Pane ID has been copied to the clipboard." & return & return & "Current Anchors: " & return & (CurrentAnchors as string)
end tell

```
You'll get an output like this:

<img width="673" alt="image" src="https://user-images.githubusercontent.com/4316081/162593255-d4cfb7e6-3b19-451d-a32f-991179d8bc06.png">


Interestingly, this doesn't capture ALL anchors that you can deeplink to. If you find some missing, you may want to dig into the preference pane itself and see if there's any bits of code that reference other available options that we can't identify as an achor. For example, the script above when run against the Security & Privacy Pane doesn't return any options for the `Input Monitoring` section. However, I can open `/System/Library/PreferencePanes/Security.prefPane/Contents/Resources/PrivacyTCCServices.plist`and see the key value I might be looking for is probably `ListenEvent`

<img width="600" alt="image" src="https://user-images.githubusercontent.com/4316081/162593163-85d9ae7d-2b24-4ba0-a71a-93898c804708.png">


### Identifying if the pane supports URLScheme.

Not all System Preference Panes support URLScheme. For those that don't, you can accomplish the same action of opening the pane with Applescript in most instances. But how do you know if a specific pane supports a URLScheme? Let's dive in!

Most of the System Preferences panes themselves are located within `/System/Library/PreferencePanes/`.

Here's how to find if the pane supports url schemes:
1. Open Finder and Go To `/System/Library/PreferencePanes`
2. Right click on the pane you want to inspect choose **Inspect Package Contents**
3. Open the Contents > `Info.plist`. If it supports url scheme you'll see a `NSPrefPaneAllowsXAppleSystemPreferencesURLScheme=1`

<img width="600" alt="image" src="https://user-images.githubusercontent.com/4316081/162593304-7b37658d-aff9-4d0f-ac11-ac3911165790.png">


If the pane DOES support a url scheme, then you can use the `open` command + URLschemes listed above. If it does not, and you still want to open the pane via script, you could do so using Applescript.

## Troubleshooting
* Note that some panes start with `com.apple.preference.` and some start with `com.apple.preferences.`, why is that? I have no clue, but don't let it trip you up if you're hunting and guessing at panes.
* This documentation is for macOS Monterey. You may have limited success with older operating systems depending on how much System Preferences has changed between operating system versions and if those panes previously supported URLScheme or not.
