
ifneq ($(strip $(MTK_USE_ANDROID_MM_DEFAULT_CODE)),yes) 
ifeq ($(strip $(MTK_WMV_PLAYBACK_SUPPORT)), yes)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/asf.cpp \
 	src/byteio.cpp \
 	src/data.cpp \
 	src/guid.cpp \
 	src/header.cpp \
 	src/parse.cpp \
 	src/utf.cpp
 	
ifeq ($(MTK_DRM_APP),yes)
  LOCAL_CFLAGS += -DMTK_DRM_APP
endif

LOCAL_MODULE := libasf

LOCAL_CFLAGS :=

 LOCAL_PRELINK_MODULE := false


LOCAL_STATIC_LIBRARIES := 

LOCAL_SHARED_LIBRARIES := \
libutils \
    libcutils

LOCAL_C_INCLUDES := \
 	$(LOCAL_PATH)/inc

include $(BUILD_STATIC_LIBRARY)

endif
endif