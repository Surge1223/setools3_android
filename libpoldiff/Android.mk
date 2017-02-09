LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
libpoldiff_srcs := \
	src/poldiff.c \
	src/attrib_diff.c \
	src/avrule_diff.c \
	src/avrule_internal.h \
	src/bool_diff.c \
	src/cat_diff.c \
	src/class_diff.c \
	src/level_diff.c \
	src/range_diff.c \
	src/range_trans_diff.c \
	src/rbac_diff.c \
	src/role_diff.c \
	src/terule_diff.c \
	src/type_diff.c \
	src/user_diff.c \
	src/type_map.c \
	src/util.c

LOCAL_MODULE := libpoldiff
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libqpol libapol
LOCAL_CFLAGS := -std=gnu99 -fpic -fPIC
LOCAL_SRC_FILES := $(libpoldiff_srcs)
LOCAL_C_INCLUDES := \
	$(common_includes)

include $(BUILD_STATIC_LIBRARY)
