# How to open every macOS System Settings Section (macOS 13+)
<img width="1200" alt="macOS Ventura and Sonoma System Settings header image" src="/images/settings_ventura-and-newer.png">

Here is a complete list of System Settings Sections (as of macOS Sonoma 14.2) and how to open them with a bash command.

macOS Ventura and newer operating systems use a new extension framework but still support some older prefpane calls. Who knows how long those will continue to work, but I've listed them here alongside their more modern counterparts to help identify calls that might work across both Monterey and newer versions of macOS if you have a mixed fleet. Those items are noted by the `legacy` tag.

You can find the macOS Monterey version of this list [here](https://github.com/bvanpeski/SystemPreferences/blob/main/macos_preferencepanes-Monterey.md).

More info can be found on the [blog](https://www.macosadventures.com/2022/12/05/how-to-open-every-section-of-macos-ventura-system-settings/).

>[!NOTE]
>While running these commands as-is should work most of the time, there are some instances and contexts where the commands will fail when running as root via MDM. To avoid this, you can run these commands as the currently logged in user. Armin Briegel has a [handy function](https://scriptingosx.com/2020/08/running-a-command-as-another-user/) that you can incorporate into your scripts. If you put his runAsUser function in your scripts, you run the open commands as the currently logged in user like this: `runAsUser open "x-apple.systempreferences:com.apple.preferences"`

### Table of Contents

**System Settings Sections**
* [Apple ID](#apple-id) | [Family Sharing](#family)
* [Wi-Fi](#wi-fi) | [Bluetooth](#bluetooth) | [Network](#network) | [VPN](#vpn)
* [Notifications](#notifications) | [Sound](#sound) | [Focus](#focus) | [Screen Time](#screen-time)
* [General](#general) | [Appearance](#appearance) | [Accessibility](#accessibility) | [Control Center](#control-center) | [Siri & Spotlight](s#iri--spotlight) | [Privacy & Security](#privacy--security)
* [Desktop & Dock](#desktop--dock) | [Displays](#displays) | [Wallpaper](#wallpaper) | [Screen Saver](#screen-saver) | [Battery](#battery) | [Energy Saver](#energy-saver)
* [Lock Screen](#lock-screen) | [Touch ID & Password](#touch-id--password) | [Users & Groups](#users--groups)
* [Passwords](#passwords) | [Internet Accounts](#internet-accounts) | [Game Center](#game-center) | [Wallet & Apple Pay](#wallet--apple-pay)
* [Headphone](#headphone) | [Keyboard](#keyboard) | [Trackpad](#trackpad) | [Mouse](#mouse) | [Game Controller](#game-controller) | [CDs & DVDs](#cds--dvds) | [Printers & Scanners](#printers--scanners)

**How To**
* [How to find settings yourself](#finding-settings-sections)
* [Troubleshooting](#troubleshooting)

## System Settings
`open x-apple.systempreferences:com.apple.preferences`

## Apple ID
`open x-apple.systempreferences:com.apple.systempreferences.AppleIDSettings`

`open x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane` (legacy)

**iCloud Section:** `open "x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane?iCloud"` (legacy)

## Family
`open x-apple.systempreferences:com.apple.Family-Settings.extension`

`open "x-apple.systempreferences:com.apple.preferences.FamilySharingPrefPane"` (legacy)

## Wi-Fi
`open x-apple.systempreferences:com.apple.wifi-settings-extension`

## Bluetooth
`open x-apple.systempreferences:com.apple.BluetoothSettings`

`open x-apple.systempreferences:com.apple.preferences.Bluetooth` (legacy)

## Network
`open x-apple.systempreferences:com.apple.Network-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.network` (legacy)

## VPN
`open x-apple.systempreferences:com.apple.NetworkExtensionSettingsUI.NESettingsUIExtension`

<br>

## Notifications
`open x-apple.systempreferences:com.apple.Notifications-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.notifications` (legacy)

## Sound
`open x-apple.systempreferences:com.apple.Sound-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.sound` (legacy)

## Focus
`open x-apple.systempreferences:com.apple.Focus-Settings.extension`

## Screen Time
`open x-apple.systempreferences:com.apple.Screen-Time-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.screentime` (legacy)

<br>

## General
Primary section: `open x-apple.systempreferences:com.apple.systempreferences.GeneralSettings`
* **About:** `open x-apple.systempreferences:com.apple.SystemProfiler.AboutExtension`
* **Software Update:** `open x-apple.systempreferences:com.apple.Software-Update-Settings.extension`
* **Storage:** `open x-apple.systempreferences:com.apple.settings.Storage`
* **AirDrop & Handoff:** `open x-apple.systempreferences:com.apple.AirDrop-Handoff-Settings.extension`
* **Login Items:** `open x-apple.systempreferences:com.apple.LoginItems-Settings.extension`
* **AppleCare & Warranty:** `open x-apple.systempreferences:com.apple.Coverage-Settings.extension` (macOS14 Sonoma)
* **Language & Region:** `open x-apple.systempreferences:com.apple.Localization-Settings.extension`
* **Date & Time:** `open x-apple.systempreferences:com.apple.Date-Time-Settings.extension`
* **Sharing:** `open x-apple.systempreferences:com.apple.Sharing-Settings.extension`
* **Time Machine:** `open x-apple.systempreferences:com.apple.Time-Machine-Settings.extension`
* **Transfer or Reset:** `open x-apple.systempreferences:com.apple.Transfer-Reset-Settings.extension`
* **Startup Disk:**
  * `open x-apple.systempreferences:com.apple.Startup-Disk-Settings.extension` or
  * `open x-apple.systempreferences:com.apple.preference.startupdisk`

## Appearance
`open x-apple.systempreferences:com.apple.Appearance-Settings.extension`

## Accessibility
Primary section:

`open x-apple.systempreferences:com.apple.Accessibility-Settings.extension`

`open "x-apple.systempreferences:com.apple.preference.universalaccess"` (legacy)
* **Voice Over:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_VoiceOver"`
* **Zoom:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Zoom"`
* **Display:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_Display"`
* **Spoken Content:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?SpokenContent"`
* **Descriptions:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Descriptions"`
* **Hearing Devices:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Hearing"` (macOS14 Sonoma)
* **Audio:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Audio"`
* **RTT:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?RTT"` (macOS 14 Sonoma)
* **Captions:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Captions"`
* **Live Captions:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?LiveCaptions"`
* **Voice Control:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?VoiceControl"`
* **Keyboard:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Keyboard"`
* **Pointer Control:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Mouse"`
* **Switch Control:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Switch"`
* **Live Speech:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?LiveSpeech"`
* **Personal Voice:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?PersonalVoice"` (macOS14 Sonoma)
* **Siri:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Siri"`
* **Shortcut:** `open "x-apple.systempreferences:com.apple.preference.universalaccess?Shortcut"`

## Control Center
`open x-apple.systempreferences:com.apple.ControlCenter-Settings.extension`

## Siri & Spotlight
`open x-apple.systempreferences:com.apple.Siri-Settings.extension`

`open x-apple.systempreferences:com.apple.Spotlight-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.speech` (legacy)

## Privacy & Security
**Primary section:**

`open x-apple.systempreferences:com.apple.settings.PrivacySecurity.extension`

`open x-apple.systempreferences:com.apple.preference.security` (legacy)

* **Location Services:**
  * `open "x-apple.systempreferences:com.apple.preference.security?Privacy_LocationServices"` or
  * `open "x-apple.systempreferences:com.apple.preference.security?Privacy_SystemServices"`
* **Contacts:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Contacts"`
* **Calendars**: `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Calendars"`
* **Reminders:**
  * `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Reminders"` or
  * `open "x-apple.systempreferences:com.apple.preference.security?Privacy_RemindersPrivacy"`
* **Photos:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Photos"`
* **Bluetooth:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Bluetooth"`
* **Microphone:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Microphone"`
* **Camera:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Camera"`
* **Motion & Fitness:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Motion"` (macOS14 Sonoma)
* **HomeKit:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_HomeKit"`
* **Speech Recognition:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_SpeechRecognition"`
* **Media & Apple Music:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Media"`
* **Files and Folders:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_FilesAndFolders"`
* **Full Disk Access:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles"`
* **Focus:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Focus"`
* **Accessibility:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"`
* **Input Monitoring:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_ListenEvent"`
* **Screen Recording:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture"`(called Screen & System Audio Recording in macOS14 Sonoma)
* **Passkeys Access for Web Browsers:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_PasskeyAccess"`
* **Automation:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Automation"`
* **App Management:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_AppBundles"`
* **Developer Tools:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_DevTools"`
* **Sensitive Content Warning:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_NudityDetection"` (macOS14 Sonoma)
* **Analytics & Improvements:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Analytics"`
* **Apple Advertising:** `open "x-apple.systempreferences:com.apple.preference.security?Privacy_Advertising"`
* **FileVault:** `open "x-apple.systempreferences:com.apple.preference.security?FileVault"` (macOS14 Sonoma)
* **Lockdown Mode:** `open "x-apple.systempreferences:com.apple.preference.security?LockdownMode"` (macOS14 Sonoma)
* **Extensions:** `open x-apple.systempreferences:com.apple.ExtensionsPreferences`
* **Profiles:**
  * `open x-apple.systempreferences:com.apple.Profiles-Settings.extension`
  * `open x-apple.systempreferences:com.apple.preferences.configurationprofiles` (legacy)
* **Advanced button:** `open "x-apple.systempreferences:com.apple.preference.security?Advanced"`

<br>

## Desktop & Dock
`open x-apple.systempreferences:com.apple.Desktop-Settings.extension`

## Displays
`open x-apple.systempreferences:com.apple.Displays-Settings.extension`

`open x-apple.systempreferences:com.apple.preference.displays` (legacy)

## Wallpaper
`open x-apple.systempreferences:com.apple.Wallpaper-Settings.extension`

## Screen Saver
`open x-apple.systempreferences:com.apple.ScreenSaver-Settings.extension`

## Battery
`open x-apple.systempreferences:com.apple.Battery-Settings.extension`

`open "x-apple.systempreferences:com.apple.preference.battery"` (legacy)

## Energy Saver
`open "x-apple.systempreferences:com.apple.preferences.EnergySaverPrefPane"`


<br>

## Lock Screen
`open x-apple.systempreferences:com.apple.Lock-Screen-Settings.extension`

## Touch ID & Password
`open x-apple.systempreferences:com.apple.Touch-ID-Settings.extension`

`open x-apple.systempreferences:com.apple.preferences.password` (legacy)

(Note: This section will be called **Login Password** on non-touch capable devices)

## Users & Groups
`open x-apple.systempreferences:com.apple.Users-Groups-Settings.extension`

`open x-apple.systempreferences:com.apple.preferences.users` (legacy)

<br>

## Passwords
`open x-apple.systempreferences:com.apple.Passwords-Settings.extension`

`open "x-apple.systempreferences:com.apple.Passwords"` (legacy)

## Internet Accounts
`open x-apple.systempreferences:com.apple.Internet-Accounts-Settings.extension`

`open x-apple.systempreferences:com.apple.preferences.internetaccounts` (legacy)

## Game Center
`open x-apple.systempreferences:com.apple.Game-Center-Settings.extension`

## Wallet & Apple Pay
`open x-apple.systempreferences:com.apple.WalletSettingsExtension`

`open "x-apple.systempreferences:com.apple.preferences.wallet"` (legacy)

<br>

## Headphone
`open x-apple.systempreferences:com.apple.HeadphoneSettings`

## Keyboard
`open x-apple.systempreferences:com.apple.Keyboard-Settings.extension`

## Trackpad
`open x-apple.systempreferences:com.apple.Trackpad-Settings.extension`

## Mouse
`open x-apple.systempreferences:com.apple.Mouse-Settings.extension`

## CDs & DVDs
`open x-apple.systempreferences:com.apple.CD-DVD-Settings.extension`

## Game Controller
`open x-apple.systempreferences:com.apple.Game-Controller-Settings.extension`

## Printers & Scanners
`open x-apple.systempreferences:com.apple.Print-Scan-Settings.extension`

<br>

## Finding Settings Sections
Apple has made discovering the proper URLScheme extensions for different sections of the app much easier in Ventura, thanks to the unification of settings that the new System Settings app brings. In fact, most of them are stored right inside of the System Settings application itself (`/System/Applications/System Settings.app/Contents/Resources/Sidebar.plist` You can combine the values in that plist with the `open x-apple-systempreferences:` command we all know and love and you're off to the races! If any new sections are added in the future, that plist is where you'll want to look.

There are a few deeper settings beyond the sidebar that won't be in that plist. To uncover those you can leverage a line of shell script to pull a list of strings out of System Settings to identify any additional sections that you might have missed. `for pref in $(strings "/System/Applications/System Settings.app/Contents/MacOS/System Settings" | awk '/^com.apple./ {print $1 }'); do echo "$pref"; done` (hat tip to @bradtchapman in MacAdmin Slack for this one)


## Troubleshooting
* If the command does not open the window to the foreground, this was a bug that was resolved in macOS 13.0.1
* This documentation is for macOS Ventura and newer. System Settings saw a drastic change to how macOS preferences are organized in this version of macOS, so don't expect any of these commands to be backwards compatible with previous versions of macOS. If you're looking for commands for Monterey's System Preferences, I've documented those [here](https://github.com/bvanpeski/SystemPreferences/blob/main/macos_preferencepanes-Monterey.md)
