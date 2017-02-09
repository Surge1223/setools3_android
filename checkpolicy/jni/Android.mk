LOCAL_PATH:= $(call my-dir)

libpoldiff_dir	:= $(LOCAL_PATH)/../libpoldiff/src
libqpol_dir		:= $(LOCAL_PATH)/../libqpol/src
libsepol_dir	:= $(LOCAL_PATH)/../libsepol
bzip2_dir		:= $(libqpol_dir)/bzip2
libapol_dir		:= $(LOCAL_PATH)/../libapol/src
regex_dir		:= $(libapol_dir)/regex


common_src_files := \
	$(shell bison -d -v --defines=$(LOCAL_PATH)/policy_parse.h -o $(LOCAL_PATH)/policy_parse.c $(LOCAL_PATH)/policy_parse.y)

common_cflags := \
	-std=gnu99 -fpic -fPIC


common_includes := \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/include \
	$(libsepol_dir)/include \
	$(LOCAL_PATH)/../libsepol/include/ \
	$(LOCAL_PATH)/../libsepol/src/ \

# otherwise forces them to be c++. Need to also add an exwwwplicit -std because the
# build system will soon default C++ to -std=c++11.
yacc_flags := -x c -std=gnu89


##
# checkpolicy
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	$(common_src_files) \
	checkpolicy.c \
	module_compiler.c \
	parse_util.c \
	policy_define.c \
	policy_parse.c \
	queue.c \

LOCAL_MODULE := checkpolicy
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libc libsepol libqpol libapol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_YACCFLAGS := -v
LOCAL_LDFLAGS += -static
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false

include $(BUILD_EXECUTABLE)

##
# checkmodule
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	$(common_src_files) \
	checkmodule.c \
	module_compiler.c \
	parse_util.c \
	policy_define.c \
	policy_parse.c \
	queue.c

LOCAL_MODULE := checkmodule
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libc libsepol libqpol libapol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_YACCFLAGS := -v
LOCAL_LDFLAGS += -static
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false

include $(BUILD_EXECUTABLE)

##
# dispol
#

include $(CLEAR_VARS)

LOCAL_MODULE := dispol
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := test/dispol.c
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libc libsepol libqpol libapol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS += -static
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false

include $(BUILD_EXECUTABLE)

##
# dismod
#

include $(CLEAR_VARS)

LOCAL_MODULE := dismod
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := test/dismod.c
LOCAL_CFLAGS := $(yacc_flags) $(common_cflags)
LOCAL_STATIC_LIBRARIES := libc libsepol libqpol libapol
LOCAL_CFLAGS += -std=gnu99 -fpic -fPIC
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS += -static
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_PACK_MODULE_RELOCATIONS := false

include $(BUILD_EXECUTABLE)

$(call import-add-path, $(LOCAL_PATH))
$(call import-module, ../libpoldiff)
$(call import-module, ../libapol)
$(call import-module, ../libqpol)
$(call import-module, ../libsepol)
