Build with:

$NDK/ndk-build APP_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk  APPLICATION_BULID_SCRIPT=Application.mk

output:

 libs/arm64-v8a/checkmodule
 libs/arm64-v8a/checkpolicy
 libs/arm64-v8a/dismod
 libs/arm64-v8a/dispol
 libs/arm64-v8a/sediff
 
 libs/armeabi/checkmodule
 libs/armeabi/checkpolicy
 libs/armeabi/dismod
 libs/armeabi/dispol
 libs/armeabi/sediff

 libs/armeabi-v7a/checkmodule
 libs/armeabi-v7a/checkpolicy
 libs/armeabi-v7a/dismod
 libs/armeabi-v7a/dispol
 libs/armeabi-v7a/sediff

 libs/mips/checkmodule
 libs/mips/checkpolicy
 libs/mips/dismod
 libs/mips/dispol
 libs/mips/sediff

 libs/mips64/checkmodule
 libs/mips64/checkpolicy
 libs/mips64/dismod
 libs/mips64/dispol
 libs/mips64/sediff

 libs/x86/checkmodule
 libs/x86/checkpolicy
 libs/x86/dismod
 libs/x86/dispol
 libs/x86/sediff

 libs/x86_64/checkmodule
 libs/x86_64/checkpolicy
 libs/x86_64/dismod
 libs/x86_64/dispol
 libs/x86_64/sediff

usage: 

$ adb remount root

$ adb push ./libs/arm64-v8a/* /system/bin/

$ adb shell

angler:/ # dispol /sepolicy                                                                                                                        
Reading policy...
libsepol.policydb_index_others: security:  1 users, 2 roles, 792 types, 0 bools
libsepol.policydb_index_others: security: 1 sens, 1024 cats
libsepol.policydb_index_others: security:  63 classes, 13244 rules, 0 cond rules
binary policy file loaded


Select a command:
1)  display unconditional AVTAB
2)  display conditional AVTAB (entirely)
3)  display conditional AVTAG (only ENABLED rules)
4)  display conditional AVTAB (only DISABLED rules)
5)  display conditional bools
6)  display conditional expressions
7)  change a boolean value
8)  display role transitions

c)  display policy capabilities
p)  display the list of permissive types
u)  display unknown handling setting
F)  display filename_trans rules

f)  set output file
m)  display menu
q)  quit

