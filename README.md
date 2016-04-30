# Twrp-3.0.2-2-Umi-X3
../bootable/recovery/variables.h: 
#define TW_VERSION_STR  "3.0.2-2"  

../bootable/recovery/data.cpp: 
mPersist.SetValue(TW_TIME_ZONE_VAR, "CET-1CEST,M3.5.0,M10.5.0"); 
mPersist.SetValue(TW_TIME_ZONE_GUISEL, "CET-1;CEST,M3.5.0,M10.5.0"); 
mPersist.SetValue("tw_military_time", "1"); 
mPersist.SetValue("tw_screen_timeout_secs", "120");  

../device/umi/x3/BoardConfig.mk: 
UMS enabled 
Fix temperature 
Backups folder in ro.product.model 
Internal storage path in /data/media 
Always visible Partition SD Card 
Reboot Bootloader 
Reboot Download
