LOCAL_PATH := device/umi/x3

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/poweroff.sh:root/sbin/poweroff.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rebootbootloader.sh:root/sbin/rebootbootloader.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rebootdownload.sh:root/sbin/rebootdownload.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rebootrecovery.sh:root/sbin/rebootrecovery.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rebootsystem.sh:root/sbin/rebootsystem.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := x3
