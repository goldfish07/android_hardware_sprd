LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	SprdOMXPlugin.cpp \
	SprdOMXComponent.cpp \
	SprdSimpleOMXComponent.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES := \
	$(TOP)/frameworks/native/include/media/hardware \
	$(TOP)/hardware/sprd/libstagefrighthw/sprddroid/include \
	$(TOP)/hardware/sprd/libstagefrighthw/sprddroid/include/openmax \
	$(TOP)/hardware/sprd/libmemoryheapion/sprddroid

ifeq ($(strip $(TARGET_GPU_PLATFORM)),midgard)
    LOCAL_C_INCLUDES += $(TOP)/hardware/sprd/gralloc/sprddroid/midgard
else
    LOCAL_C_INCLUDES += $(TOP)/hardware/sprd/gralloc/sprddroid/utgard
endif

LOCAL_SHARED_LIBRARIES :=       \
        libmemoryheapion        \
        libutils                \
        libcutils               \
        libui                   \
        libdl			\
	libstagefright_foundation
LOCAL_MODULE := libstagefrighthw

LOCAL_CFLAGS := -DLOG_TAG=\"$(TARGET_BOARD_PLATFORM).libstagefright\"

include $(BUILD_SHARED_LIBRARY)

