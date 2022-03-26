#!/bin/zsh
# Script to prompt the end user to approve Screen Recording in System Preferences.

# REQUIREMENTS:
# This script runs on macOS 10.15 or higher.
# Works best when the app being targeted is being deployed with a Privacy Profile that allows standard users to approve Screen Capture.

###########################################################################################
# Created by Brian Van Peski
###########################################################################################
# CHANGE LOG
#	Date		    Version		Description
#--------------------------------------------------------------------------------------------------
# 02/15/2022  1.0   -   First go.
# 02/16/2022  1.2   -   Added check to see if Liftoff is running first. Consolidated TCCcheck.
#                       Added separate check to see if ScreenCapture as already approved.
# 02/18/2022  1.3   -   Final v1 tweaks.
# 02/22/2022  1.4   -   Adding unified logging.

# Set logging - Send logs to stdout as well as Unified Log
# Use 'log show --process "logger"'to view logs activity.
function LOGGING {
    /bin/echo "${1}"
    /usr/bin/logger "ScreenNudge: ${1}"
}

##############################################################
# USER INPUT 
##############################################################
appPath="/Applications/TeamViewer.app"
appName="TeamViewer" #Name of app to present in dialog to user

##############################################################
# VARIABLES & FUNCTIONS
##############################################################
osVer="$(sw_vers -productVersion)"
bundleid=$(/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' "$appPath/Contents/Info.plist")

Check_TCC (){
  #Split Screen Recording approval variables for Catalina vs Big Sur+
  if [[ $osVer > 11.* ]]; then
    export scApproval="$(sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'SELECT service, client FROM access WHERE auth_value = '2'' | grep -o "$bundleid")"
  elif [[ $osVer == 10.15.* ]]; then
    export scApproval="$(sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'SELECT service, client FROM access WHERE allowed = '1'' | grep -o "$bundleid")"
  fi
}

################################################################
#  THE NEEDFUL
################################################################
#Check current ScreenCapture approval status
Check_TCC
#Check to see if app is installed and if ScreenCapture is approved.
if [[ $scApproval == "$bundleid" ]]; then
  LOGGING "ScreenCapture has already been approved for $appName..."
  exit 0
elif [[ -d "$appPath" && $scApproval != "$bundleid" ]]; then
  LOGGING "--- $appName is installed with bundleid: "$bundleid""
  #Prompt user for Screen Recording Approval and loop until approved.
  until [[ $scApproval = $bundleid ]]
    do
      LOGGING "--- Requesting user to manually approve ScreenCapture for $appName..."
      open "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture"
      osascript -e 'tell application "SystemUIServer"' -e 'activate' -e 'display alert "Screen Recording Approval Required" as critical message "Please approve Screen Recording for '$appName' in System Preferences > Security & Privacy > Privacy > Screen Recording." giving up after 20' -e 'end tell'
      sleep 10
      LOGGING "--- Checking for approval of ScreenCapture for $appName..."
      Check_TCC
    done
    LOGGING "Screen Recording for $appName has been approved! Exiting..."
    osascript -e 'quit app "System Preferences"'
    exit 0
else
  LOGGING "$appName not found. Exiting..."
  exit 0
fi
