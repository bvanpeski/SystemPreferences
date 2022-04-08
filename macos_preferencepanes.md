# Every macOS System Preference Pane

Here is a complete (as of macOS Monterey 12.2.1) list of System Preference Panes and how to open them with a bash command. Not all panes support a url scheme to open, but you could open with applescript.

## Apple ID (com.apple.preferences.AppleIDPrefPane)
Primary Pane: `open "x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane"`
* Overview
* iCloud: `open "x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane?iCloud"`

## Desktop & Screensaver (com.apple.preference.desktopscreeneffect)
URLScheme note support. You'll have to use applescript if u want to open.

```
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.desktopscreeneffect"
end tell
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
* Location Services: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_LocationServices"`
* Contacts: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Contacts"`
* Calendars: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Calendars"`
* Reminders: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Reminders"`
* Photos: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Photos"`
* **Camera:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Camera"`
* **Microphone:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Microphone"`
* Speech Recognition: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_SpeechRecognition"`
* Accessibility: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"`
* Input Monitoring
* Full Disk Access
* Files and Folders
* **Screen Recording:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture"`
* Media & Apple Music
* HomeKit
* Bluetooth
* User Availability:
* Automation: 
* Developer Tools: 
* Analytics & Improvements:
* Apple Advertising:


## Finding the keys yourself
Let's say you come across this file, I haven't updated it, and a new version of macOS has come out that adds new System Preferences panes or changes the names of existing ones. How do you discover where they are? I'm glad you asked.

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
### Identifying if the pane supports URLScheme.

Most of the preference panes themselves are located within `/System/Library/PreferencePanes/`.

Here's how to find if the pane supports url schemes:
1. Open Finder and Go To `/System/Library/PreferencePanes`
2. Right click on the pane you want to inspect choose **Inspect Package Contents**
3. Open the Contents > `Info.plist`. If it supports url scheme you'll see a `NSPrefPaneAllowsXAppleSystemPreferencesURLScheme=1`

If the pane DOES support a url scheme, then you can use the `open` command. If it does not, and you still want to open the pane via script, you could do so using Applescript.

# Reference
https://apple.stackexchange.com/questions/365857/create-system-preferences-url-to-privacy-files-and-folders-in-10-15-catalina
https://levelup.gitconnected.com/tooling-to-explore-applescript-part-2-ed44f511fcb5
https://macosxautomation.com/applescript/features/system-prefs.html
