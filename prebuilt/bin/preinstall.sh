#!/system/bin/busybox sh

echo "do preinstall job"
BUSYBOX="/system/bin/busybox"

if [ ! -e /data/system.notfirstrun ]; then
	/system/bin/sh /system/bin/pm preinstall /system/preinstall
	/system/bin/sh /system/bin/pm preinstall /sdcard/preinstall

	# copy android modify tool files
	mkdir /mnt/nanda
	mount -t vfat /dev/block/nanda /mnt/nanda
	$BUSYBOX cp /mnt/nanda/vendor/system/usr/keylayout/*.kl /system/usr/keylayout/

	# copy recovery mode hardware keys to bootloader - SAW
	$BUSYBOX cp /system/etc/script.bin /mnt/nanda/script.bin
	$BUSYBOX cp /system/etc/script.bin /mnt/nanda/script0.bin
	sync
	umount /mnt/nanda
	rmdir /mnt/nanda
	
	$BUSYBOX touch /data/system.notfirstrun
fi

echo "preinstall ok"	