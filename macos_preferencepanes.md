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
`open "x-apple.systempreferences:com.apple.preference.security?Firewall"`
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
* Automation: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Automation"`
* Developer Tools: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_DevTools"`
* Analytics & Improvements:
* Apple Advertising: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Advertising"`


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
You'll get an output like this:

<img width="673" alt="image" src="https://user-images.githubusercontent.com/4316081/162593255-d4cfb7e6-3b19-451d-a32f-991179d8bc06.png">


Interestingly, this doesn't capture ALL anchors that you can deeplink to. If you find some missing, you may want to dig into the preference pane itself and see if there's any bits of code that reference available options. For example, the script above when run against the Security & Privacy Pane doesn't return any options for the `Input Monitoring` section. However, I can open `/System/Library/PreferencePanes/Security.prefPane/Contents/Resources/PrivacyTCCServices.plist`and see the key i'm looking for is `ListenEvent`

<img width="600" alt="image" src="https://user-images.githubusercontent.com/4316081/162593163-85d9ae7d-2b24-4ba0-a71a-93898c804708.png">


### Identifying if the pane supports URLScheme.

Not all Preference Panes support URLScheme. For those that don't, you can accomplish the same actions of opening the pane with Applescript in most instances. But how do you know if a specific pane supports a URLScheme? Let's dive in!

Most of the preference panes themselves are located within `/System/Library/PreferencePanes/`.

Here's how to find if the pane supports url schemes:
1. Open Finder and Go To `/System/Library/PreferencePanes`
2. Right click on the pane you want to inspect choose **Inspect Package Contents**
3. Open the Contents > `Info.plist`. If it supports url scheme you'll see a `NSPrefPaneAllowsXAppleSystemPreferencesURLScheme=1`

<img width="600" alt="image" src="https://user-images.githubusercontent.com/4316081/162593304-7b37658d-aff9-4d0f-ac11-ac3911165790.png">


If the pane DOES support a url scheme, then you can use the `open` command + URLschemes listed above. If it does not, and you still want to open the pane via script, you could do so using Applescript.

# Reference
https://apple.stackexchange.com/questions/365857/create-system-preferences-url-to-privacy-files-and-folders-in-10-15-catalina
https://levelup.gitconnected.com/tooling-to-explore-applescript-part-2-ed44f511fcb5
https://macosxautomation.com/applescript/features/system-prefs.html
