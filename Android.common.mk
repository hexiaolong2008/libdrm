# XXX: Consider moving these to config.h analogous to autoconf.
LOCAL_CFLAGS += \
	-DMAJOR_IN_SYSMACROS=1 \
	-DHAVE_VISIBILITY=1 \
	-DHAVE_LIBDRM_ATOMIC_PRIMITIVES=1

LOCAL_CFLAGS += \
	-Wall \
	-Werror \
	-Wno-format \
	-Wno-gnu-variable-sized-type-not-at-end \
	-Wno-pointer-arith \
	-Wno-unused-parameter \
	-Wno-unused-variable \
	-Wno-missing-field-initializers

# Quiet down the build system and remove any .h files from the sources
LOCAL_SRC_FILES := $(patsubst %.h, , $(LOCAL_SRC_FILES))
LOCAL_EXPORT_C_INCLUDE_DIRS += $(LOCAL_PATH)
