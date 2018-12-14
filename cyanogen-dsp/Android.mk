LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_VENDOR_MODULE := true

LOCAL_MODULE := libcyanogen-dsp

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_RELATIVE_PATH := soundfx

LOCAL_PRELINK_MODULE := false

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
	cyanogen-dsp.cpp \
	Biquad.cpp \
	Delay.cpp \
	Effect.cpp \
	EffectBassBoost.cpp \
	EffectCompression.cpp \
	EffectEqualizer.cpp \
	EffectVirtualizer.cpp \
	EffectStereoWide.cpp \
	FIR16.cpp \
# terminator

LOCAL_C_INCLUDES += \
	frameworks/base/include \
	hardware/libhardware/include \
	system/core/include \
	system/core/base/include \
	system/media/audio_effects/include \
# terminator

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog

include $(BUILD_SHARED_LIBRARY)

