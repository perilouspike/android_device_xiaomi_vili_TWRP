####################################################################
# SHRP stuffs - specific lines                                     #                        
####################################################################
# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC).

# Mandatory flags

# Path of your SHRP Tree *
SHRP_PATH := device/realme/RMX3081
# Maintainer name *
SHRP_MAINTAINER := perilouspike
# Device codename *
SHRP_DEVICE_CODE := RMX3081
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A_only
# Your device's recovery path, dont use blindly *
SHRP_REC := /dev/block/bootdevice/by-name/recovery

#Important flags

# Emergency DownLoad mode (0 = no EDL mode, 1 = EDL mode available)
SHRP_EDL_MODE := 1
# Storage paths, put your device's storage paths from fstab *
SHRP_INTERNAL := /sdcard
SHRP_EXTERNAL := /external_sd
SHRP_OTG := /usb_otg
# Put 0 to disable flashlight *
SHRP_FLASH := 1

# Optional flags

# SHRP padding flag (for rounded corner devices only). You have to change these values according to your device's roundness.
SHRP_STATUSBAR_RIGHT_PADDING := 20
SHRP_STATUSBAR_LEFT_PADDING := 80
# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock [Optional]
SHRP_EXPRESS := true
# SHRP Express use Data save shrp files inside /data instead of /system
SHRP_EXPRESS_USE_DATA := true
# SHRP Dark mode, use this flag to have dark theme set by default [Optional]
#SHRP_DARK := true
# Max Brightness of LED [Optional]
SHRP_FLASH_MAX_BRIGHTNESS := 200

#
