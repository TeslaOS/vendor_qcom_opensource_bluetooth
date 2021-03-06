LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
src_dirs:= src/org/codeaurora/bluetooth/wipower

LOCAL_SRC_FILES := \
        $(call all-java-files-under, $(src_dirs))

LOCAL_PACKAGE_NAME := wipowerservice
LOCAL_CERTIFICATE := platform
LOCAL_JAVA_LIBRARIES += android.wipower

LOCAL_REQUIRED_MODULES := bluetooth.default

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_MULTILIB := 32
LOCAL_JNI_SHARED_LIBRARIES := libwipower_jni

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
