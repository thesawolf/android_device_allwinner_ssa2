# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply only to ssa2 devices
#
# Anything that is generic to all allwinner products should go in the common directory
#
# Everything in this directory will become public

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.media.dec.jpeg.memcap=8000000 \
	ro.media.enc.hprof.vid.bps=8000000 \
        dalvik.vm.lockprof.threshold=250 \
        dalvik.vm.dexopt-data-only=1 \
	dalvik.vm.checkjni=false \
	dalvik.vm.jmiopts=forcecopy \
	dalvik.vm.stack-trace-file=/data/anr/traces.txt \
        ro.vold.umsdirtyratio=20 \
        hwui.render_dirty_regions=false \
        persist.sys.usb.config=adb,mass_storage \
        ro.display.switch=1 \
        ro.opengles.version=131072 \
        wifi.interface=wlan0 \
        wifi.supplicant_scan_interval=120 \
        ro.carrier=wifi-only \
	persist.sys.root_access=3 \
	ro.sf.lcd_density=120 \
	ro.additionalmounts = /mnt/extsd \
	ro.vold.switchablepair=/mnt/sdcard,/mnt/extsd \
	debug.egl.hw=1 \
	ro.media.enc.jpeg.quality=100 \
	debug.sf.hw=1 \
	video.accelerate.hw=1 \
	debug.performance.tuning=1 \
	persist.sys.vold.switchexternal=0 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	dalvik.vm.verify-bytecode=false \
	dalvik.vm.dexopt-flags=m=v,o=y \
	dalvik.vm.execution-mode=int:jit \
	ro.kernel.android.checkjni=0 \
	ro.kernel.checkjni=0 \
	windowsmgr.max_events_per_sec=120 \
	debug.enabletr=true \
	persist.sys.purgeable_assets=1 \
	persist.sys.use_dithering=0 \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-scan=false \
	media.stagefright.enable-http=true \
	media.stagefright.enable-rtsp=true \
	media.stagefright.enable-record=true \
	net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
	keyguard.no_require_sim=true \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=48m \
	dalvik.vm.heapsize=64m \
	pm.sleep_mode=1 \
	ro.ril.disable.power.collapse=0 \
	dev.sfbootcomplete=0 \
	ro.config.nocheckin=1 \
	persist.sys.ui.hw=1 \
	debug.composition.type=gpu \
	view.touch_slop=2 \
	view.minimum_fling_velocity=25 \
	updateme.disableinstalledapps=1 \
	updateme.disablescripts=1 \

DEVICE_PACKAGE_OVERLAYS += device/allwinner/ssa2/overlay

# added for build - SAW
# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
	device/allwinner/ssa2/proprietary/lib/libMali.so:obj/lib/libMali.so \
	device/allwinner/ssa2/proprietary/lib/libUMP.so:obj/lib/libUMP.so \
	device/allwinner/ssa2/proprietary/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/allwinner/ssa2/proprietary/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/allwinner/ssa2/proprietary/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/allwinner/ssa2/proprietary/lib/libMali.so:system/lib/libMali.so \
	device/allwinner/ssa2/proprietary/lib/libUMP.so:system/lib/libUMP.so \
	device/allwinner/ssa2/proprietary/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
	device/allwinner/ssa2/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
	device/allwinner/ssa2/prebuilt/lib/ft5x_ts.ko:recovery/root/lib/ft5x_ts.ko \
	device/allwinner/ssa2/config/axp20-supplyer.kl:recovery/root/system/usr/keylayout/axp20-supplyer.kl \
	device/allwinner/ssa2/config/ft5x_ts.kl:recovery/root/system/usr/keylayout/ft5x_ts.kl \
	device/allwinner/ssa2/config/sun4i-keyboard.kl:recovery/root/system/usr/keylayout/sun4i-keyboard.kl \
	device/allwinner/ssa2/config/ft5x_ts.idc:recovery/root/system/usr/idc/ft5x_ts.idc \
	device/allwinner/ssa2/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	device/allwinner/ssa2/init.rc:root/init.rc \
	device/allwinner/ssa2/init.sun4i.rc:root/init.sun4i.rc \
	device/allwinner/ssa2/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
	device/allwinner/ssa2/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/allwinner/ssa2/config/camera.cfg:system/etc/camera.cfg \
	device/allwinner/ssa2/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/allwinner/ssa2/config/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/allwinner/ssa2/config/ft5x_ts.kl:system/usr/keylayout/ft5x_ts.kl \
	device/allwinner/ssa2/config/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/allwinner/ssa2/config/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/allwinner/ssa2/prebuilt/app/UpdateMe.apk:system/app/UpdateMe.apk \
	device/allwinner/ssa2/prebuilt/update_me.xml:system/update_me.xml \
	device/allwinner/ssa2/prebuilt/bin/reboot-recovery.sh:system/bin/reboot-recovery.sh \
	device/allwinner/ssa2/prebuilt/bin/preinstall.sh:system/bin/preinstall.sh \
	device/allwinner/ssa2/vold.fstab:system/etc/vold.fstab \
	device/allwinner/ssa2/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
        frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
        frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
        frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/android.hardware.sensor.compass.xml \
        frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# EXT4 Support
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \

# Hardware support
PRODUCT_PACKAGES += audio.primary.sun4i \
        audio_policy.default \
        camera.sun4i \
        display.sun4i \
        gralloc.sun4i \
        hwcomposer.sun4i \
        lights.sun4i \
        sensors.sun4i \
        setrecovery \
#

# CedarX libraries
PRODUCT_PACKAGES += libCedarA \
        libCedarX \
        libcedarv \
        libcedarxbase \
        libcedarxosal \
        libcedarxsftdemux \
        libswdrm \
#

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni \

#$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
#$(call inherit-product, build/target/product/full_base.mk)

# PRODUCT_LOCALES += mdpi