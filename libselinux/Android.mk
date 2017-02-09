LOCAL_PATH:= $(call my-dir)

	
libpcre_src_files := \
	pcre/pcre_chartables.c \
	pcre/dist/pcre_byte_order.c \
	pcre/dist/pcre_compile.c \
	pcre/dist/pcre_config.c \
	pcre/dist/pcre_dfa_exec.c \
	pcre/dist/pcre_exec.c \
	pcre/dist/pcre_fullinfo.c \
	pcre/dist/pcre_get.c \
	pcre/dist/pcre_globals.c \
	pcre/dist/pcre_jit_compile.c \
	pcre/dist/pcre_maketables.c \
	pcre/dist/pcre_newline.c \
	pcre/dist/pcre_ord2utf8.c \
	pcre/dist/pcre_refcount.c \
	pcre/dist/pcre_string_utils.c \
	pcre/dist/pcre_study.c \
	pcre/dist/pcre_tables.c \
	pcre/dist/pcre_ucd.c \
	pcre/dist/pcre_valid_utf8.c \
	pcre/dist/pcre_version.c \
	pcre/dist/pcre_xclass.c

libpcrecpp_src_files := \
	pcre/dist/pcrecpp.cc \
	pcre/dist/pcre_scanner.cc \
	pcre/dist/pcre_stringpiece.cc

sljit_src_files := \
	pcre/dist/sljit/sljitConfig.h \
	pcre/dist/sljit/sljitConfigInternal.h \
	pcre/dist/sljit/sljitExecAllocator.c \
	pcre/dist/sljit/sljitLir.c \
	pcre/dist/sljit/sljitLir.h \
	pcre/dist/sljit/sljitNativeARM_32.c \
	pcre/dist/sljit/sljitNativeARM_64.c \
	pcre/dist/sljit/sljitUtils.c

libselinux_src_files := \
	src/policyvers.c \
	src/fsetfilecon.c \
	src/procattr.c \
	src/deny_unknown.c \
	src/stringrep.c \
	src/setenforce.c \
	src/label.c \
	src/avc.c \
	src/avc_internal.c \
	src/check_context.c \
	src/getpeercon.c \
	src/audit2why.c \
	src/android.c \
	src/lsetfilecon.c \
	src/checkAccess.c \
	src/lgetfilecon.c \
	src/load_policy.c \
	src/canonicalize_context.c \
	src/mapping.c \
	src/context.c \
	src/selinuxswig_wrap.c \
	src/fgetfilecon.c \
	src/freecon.c \
	src/avc_sidtab.c \
	src/setfilecon.c \
	src/sestatus.c \
	src/enabled.c \
	src/getfilecon.c \
	src/compute_av.c \
	src/init.c \
	src/label_android_property.c \
	src/get_initial_context.c \
	src/sha.c \
	src/callbacks.c \
	src/disable.c \
	src/selinuxswig_ruby_wrap.c \
	src/compute_create.c \
	src/label_file.c \
	src/getenforce.c \
	src/booleans.c 
	
libsepol_src_files := \
	sepol/src/assertion.c \
	sepol/src/avrule_block.c \
	sepol/src/avtab.c \
	sepol/src/boolean_record.c \
	sepol/src/booleans.c \
	sepol/src/conditional.c \
	sepol/src/constraint.c \
	sepol/src/context.c \
	sepol/src/context_record.c \
	sepol/src/debug.c \
	sepol/src/ebitmap.c \
	sepol/src/expand.c \
	sepol/src/genbools.c \
	sepol/src/genusers.c \
	sepol/src/handle.c \
	sepol/src/hashtab.c \
	sepol/src/hierarchy.c \
	sepol/src/iface_record.c \
	sepol/src/interfaces.c \
	sepol/src/link.c \
	sepol/src/mls.c \
	sepol/src/module.c \
	sepol/src/module_to_cil.c \
	sepol/src/node_record.c \
	sepol/src/nodes.c \
	sepol/src/polcaps.c \
	sepol/src/policydb.c \
	sepol/src/policydb_convert.c \
	sepol/src/policydb_public.c \
	sepol/src/port_record.c \
	sepol/src/ports.c \
	sepol/src/roles.c \
	sepol/src/services.c \
	sepol/src/sidtab.c \
	sepol/src/symtab.c \
	sepol/src/user_record.c \
	sepol/src/users.c \
	sepol/src/util.c \
	sepol/src/write.c

cil_src_files := \
	sepol/cil/src/cil_binary.c \
	sepol/cil/src/cil_build_ast.c \
	sepol/cil/src/cil.c \
	sepol/cil/src/cil_copy_ast.c \
	sepol/cil/src/cil_find.c \
	sepol/cil/src/cil_fqn.c \
	sepol/cil/src/cil_lexer.l \
	sepol/cil/src/cil_list.c \
	sepol/cil/src/cil_log.c \
	sepol/cil/src/cil_mem.c \
	sepol/cil/src/cil_parser.c \
	sepol/cil/src/cil_policy.c \
	sepol/cil/src/cil_post.c \
	sepol/cil/src/cil_reset_ast.c \
	sepol/cil/src/cil_resolve_ast.c \
	sepol/cil/src/cil_stack.c \
	sepol/cil/src/cil_strpool.c \
	sepol/cil/src/cil_symtab.c \
	sepol/cil/src/cil_tree.c \
	sepol/cil/src/cil_verify.c




common_cflags := \
	-Wall -Wshadow -O2 \
	-pipe -fno-strict-aliasing \


##
# "-x c" forces the lex/yacc files to be compiled as c the build system
# otherwise forces them to be c++. Need to also add an explicit -std because the
# build system will soon default C++ to -std=c++11.
yacc_flags := -x c -std=gnu89

##
# libsepol.so

common_includes := \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/src/ \
	$(LOCAL_PATH)/cil/include/ \
	$(LOCAL_PATH)/cil/src/ \
	$(LOCAL_PATH)/pcre \
	$(LOCAL_PATH)/pcre/dist \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/selinux \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/  \
	$(LOCAL_PATH)/cil/include/ \
	$(LOCAL_PATH)/sepol/cil/src/ \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/src/ \
	$(LOCAL_PATH)/cil/include/ \
	$(LOCAL_PATH)/sepol/utils/ \
	/data/toolchain/include/python2.7
##
# "-x c" forces the lex/yacc files to be compiled as c the build system
# otherwise forces them to be c++. Need to also add an explicit -std because the
# build system will soon default C++ to -std=c++11.
yacc_flags := -x c -std=gnu89

include $(CLEAR_VARS)


include $(CLEAR_VARS)
LOCAL_MODULE := libselinux_static
LOCAL_MODULE_TAGS := eng
LOCAL_WHOLE_STATIC_LIBRARIES := libpcre
LOCAL_STATIC_LIBRARIES := libmincrypt liblog libpcre
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libselinux_src_files)
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(libselinux_src_files)
LOCAL_MODULE:= libselinux
LOCAL_MODULE_TAGS := eng
LOCAL_WHOLE_STATIC_LIBRARIES := libpcre
LOCAL_C_INCLUDES := $(common_includes)
include $(BUILD_SHARED_LIBRARY)



