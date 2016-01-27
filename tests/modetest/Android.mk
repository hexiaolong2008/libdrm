LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/Makefile.sources

LOCAL_SRC_FILES := $(filter-out %.h,$(MODETEST_FILES))

LOCAL_MODULE := modetest

LOCAL_SHARED_LIBRARIES := libdrm

include $(BUILD_EXECUTABLE)
