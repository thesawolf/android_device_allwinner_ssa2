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
        ro.display.switch=1 \
        ro.opengles.version=131072 \
        ro.media.dec.jpeg.memcap=8000000 \
	ro.media.enc.hprof.vid.bps=8000000 \
	ro.media.enc.jpeg.quality=100 \
        ro.vold.umsdirtyratio=20 \
        ro.carrier=wifi-only \
	ro.sf.lcd_density=120 \
	ro.product.firmware=1.1 \
	ro.additionalmounts = /mnt/extsd \
	ro.vold.switchablepair=/mnt/sdcard,/mnt/extsd \
	ro.kernel.android.checkjni=0 \
	ro.kernel.checkjni=0 \
	ro.setupwizard.mode=OPTIONAL \
	ro.suspend.unloadWifiDriver=true \
	ro.telephony.default_network=4 \
	ro.telephony.disable-call=true \
	ro.debuggable=1 \
	ro.phone_storage=0 \
	ro.telephony.call_ring.multiple=false \
	ro.com.android.dataroaming=true \
	ro.config.nocheckin=1 \
	ro.compcache.default=0 \
	ro.config.hw_fast_dormancy=1 \
	ro.HorizontalVVM=true \
	ro.HorizontalBUA=true \
	ro.browser.useragent=1 \
	ro.secure=0 \
	ro.mot.bindervm.config=100 \
	ro.mot.dalvik.warnonly=true \
	ro.ril.disable.power.collapse=0 \
	ro.sf.hw=1 \
	ro.sys.def_font_scale=100 \
	browser.tioptimization=true \
        dalvik.vm.lockprof.threshold=512 \
        dalvik.vm.dexopt-data-only=1 \
	dalvik.vm.checkjni=false \
	dalvik.vm.jmiopts=forcecopy \
	dalvik.vm.stack-trace-file=/data/anr/traces.txt \
	dalvik.vm.verify-bytecode=false \
	dalvik.vm.dexopt-flags=v=n,o=v \
	dalvik.vm.execution-mode=int:jit \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=128m \
	dalvik.vm.heapsize=256m \
	dalvik.vm.minheapsize=5m \
        hwui.render_dirty_regions=false \
	keyguard.no_require_sim=true \
        persist.sys.usb.config=mass_storage,adb \
	persist.sys.root_access=3 \
	persist.sys.vold.switchexternal=0 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	persist.sys.purgeable_assets=1 \
	persist.sys.use_dithering=0 \
	persist.sys.ui.hw=1 \
	persist.service.adb.enable=1 \
	persist.sampling_profiler=1 \
	pm.sleep_mode=1 \
        wifi.interface=wlan0 \
        wifi.supplicant_scan_interval=120 \
	debug.egl.hw=1 \
	debug.sf.hw=1 \
	debug.performance.tuning=1 \
	debug.composition.type=cpu \
	debug.egl.profiler=1 \
	debug.sf.enable_hgl=1 \
	debug.kill_allocating_task=0 \
	debug.overlayui.enable=0 \
	debug.sf.reboot=1 \
	video.accelerate.hw=1 \
	windowsmgr.max_events_per_sec=120 \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-scan=true \
	media.stagefright.enable-http=true \
	net.tcp.buffersize.default=87380,174760,349520,87380,174760,349520 \
	net.tcp.buffersize.wifi=87380,174760,349520,87380,174760,349520 \
	net.core.netdev_max_backlog=2500 \
	net.core.rmem_max=349520 \
	net.core.wmem_max=349520 \
	net.ipv4.tcp_rmem=87380,174760,349520 \
	net.ipv4.tcp_wmem=87380,174760,349520 \
	net.ipv4.tcp_no_metrics_save=1 \
	net.ipv4.tcp_moderate_rcvbuf=1 \
	net.ipv4.tcp_window_scaling=1 \
	net.ipv4.ip_forward=1 \
	net.ipv4.route.flush=1 \
	net.ipv4.tcp_sack=1 \
	view.touch_slop=2 \
	view.minimum_fling_velocity=25 \
	rild.libpath=/system/lib/liballwinner-ril.so \
	rild.libargs=-d /dev/ttyUSB2 \
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
	external/cedarx/CedarAndroidLib/LIB_ICS_F23/libstagefright_soft_cedar_h264dec.so:system/lib/libstagefright_soft_cedar_h264dec.so \
	device/allwinner/ssa2/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
	device/allwinner/ssa2/prebuilt/kernel/3036/modules/ft5x_ts.ko:recovery/root/lib/ft5x_ts.ko \
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
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
	device/allwinner/ssa2/proprietary/firmware/ft5306-sc3058-1024X768.bin:system/vendor/firmware/ft5x_firmware \
	device/allwinner/ssa2/config/script.bin:system/etc/script.bin \

# kernel stuff
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/allwinner/ssa2/prebuilt/kernel/3036b/modules,system/lib/modules)

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
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

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