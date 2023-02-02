LOCAL_PATH := $(call my-dir)

ifneq ($$(TARGET_DEVICE),vili)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
