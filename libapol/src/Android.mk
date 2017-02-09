LOCAL_PATH:= $(call my-dir)

regex_dir := $(LOCAL_PATH)/regex

include $(CLEAR_VARS)
LOCAL_MODULE := libapol
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -mcpu=cortex-a8
LOCAL_CFLAGS += -std=gnu99
LOCAL_CFLAGS += -march=armv7-a
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../libqpol/include \
	$(regex_dir)

LOCAL_SRC_FILES := \
	avrule-query.c \
	bool-query.c \
	bst.c \
	class-perm-query.c \
	condrule-query.c \
	constraint-query.c \
	context-query.c \
	domain-trans-analysis.c \
	fscon-query.c \
	infoflow-analysis.c \
	isid-query.c \
	mls-query.c \
	mls_level.c \
	mls_range.c \
	netcon-query.c \
	perm-map.c \
	permissive-query.c \
	polcap-query.c \
	policy.c \
	policy-path.c \
	policy-query.c \
	queue.c \
	range_trans-query.c \
	rbacrule-query.c \
	relabel-analysis.c \
	render.c \
	role-query.c \
	terule-query.c \
	ftrule-query.c \
	type-query.c \
	types-relation-analysis.c \
	user-query.c \
	util.c \
	vector.c \
	getline.c \
	regex/regcomp.c  \
	regex/regerror.c  \
	regex/regexec.c  \
	regex/regfree.c \
	bounds-query.c \
	default-object-query.c 


LOCAL_STATIC_LIBRARIES := libqpol

include $(BUILD_STATIC_LIBRARY)
