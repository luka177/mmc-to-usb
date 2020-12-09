# mmc-to-usb
Simple tool for android devices with usb configfs, to provide the whole emmc as usb mass storage device.

## How it works
mmc-to-usb builds an minmalistic ramdisk with busybox and an init script. When it boots, it configures the usb interface to mass storage.

## Use cases
- Use dd from PC
- Modify partition table (**be careful**)
- Just modify some file on some partitions in easy way.
- You tell me

## Minimalist porting guide
- Place your kernel in prebuilt/brand-model/zImage (kernel must have CONFIG_USB_CONFIGFS_MASS_STORAGE enabled)
- Create your device config file (src/env-\*.sh)
- Create an makefile rule
- Build & test
