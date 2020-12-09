# mmc-to-usb
Simple tool for android devices with usb configfs, to provide whole emmc as usb mass storage device.

#How it work?
mmc-to-usb builds minmalistic ramdisk with busybox, and init script. When it boots it configures usb interface to mass storage.

#Use cases
1.Use dd from PC
2.Modify partition table (be cearfull)
3.Just modify some file on some partitions in easy way.
4.You tell me.
