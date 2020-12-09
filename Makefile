all: fxtec-pro1-image

fxtec-pro1-image: 
	@echo "MAKE  $@"   
	@mkdir -p build/images/fxtec-pro1
	@mkbootimg --kernel prebuilt/fxtec-pro1/zImage.gz --ramdisk build/initrd.cpio --pagesize 4096 --cmdline "console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 androidboot.selinux=permissiv" --kernel_offset 00008000 --ramdisk_offset 02000000 --tags_offset 00000100 -o build/images/fxtec-pro1/boot.img

initrd-cpio:
	@echo "MAKE  $@"   
	@mkdir -p build/
	@cd initrd; find | cpio -ov > ../build/initrd.cpio
