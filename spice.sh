#!/bin/sh

echo "This is for 4.19"

rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/media
rm -rf hardware/qcom-caf/msm8998/display
rm -rf device/qcom/sepolicy-legacy-um

echo "Cloning Hals"

git clone git@github.com:Jasmine-Wayne-4-19/android_hardware_qcom_display.git -b sdm660-4.19 hardware/qcom-caf/msm8998/display

git clone git@github.com:Jasmine-Wayne-4-19/android_hardware_qcom_audio.git -b sdm660-4.19 hardware/qcom-caf/msm8998/audio

git clone git@github.com:Jasmine-Wayne-4-19/android_hardware_qcom_media.git -b sdm660-4.19 hardware/qcom-caf/msm8998/media

echo "Cloning device stuffs"

git clone git@github.com:Jasmine-Wayne-4-19/android_device_xiaomi_sdm660_common_4.19.git -b 11 device/xiaomi/sdm660-common

git clone git@github.com:Jasmine-Wayne-4-19/android_kernel_xiaomi_sdm660_4.19.git -b 11 kernel/xiaomi/sdm660

git clone git@github.com:Jasmine-Wayne-4-19/android_vendor_xiaomi_sdm660_common_4.19.git -b 11 vendor/xiaomi/sdm660-common

git clone git@github.com:Jasmine-Wayne-4-19/android_device_xiaomi_jasmine_sprout_4.19.git -b 11 device/xiaomi/jasmine_sprout

git clone git@github.com:Jasmine-Wayne-4-19/android_vendor_xiaomi_wayne_common_4.19.git -b 11 vendor/xiaomi/wayne-common

echo "Recovery and meme cam"

git clone git@github.com:xiaomi-sdm660/android_vendor_xiaomi_MiuiCamera.git -b master vendor/xiaomi/MiuiCamera

git clone git@github.com:xiaomi-sdm660/android_recovery_twrp.git -b backup recovery/twrp/xiaomi/jasmine_sprout

echo "Clone Different sepolicy"

git clone git@github.com:SpiceOS/android_device_qcom_sepolicy.git -b sdm660-4.19-legacy-um device/qcom/sepolicy-legacy-um
