ifeq ($(GNUSTEP_MAKEFILES),)
	GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
endif
ifeq ($(GNUSTEP_MAKEFILES),)
	$(error You need to set GNUSTEP_MAKEFILES before compiling!)
endif

include $(GNUSTEP_MAKEFILES)/common.make

#
## Framework
#

#VERSION = 0.1
FRAMEWORK_NAME = OCDiscount
OCDiscount_CURRENT_VERSION_NAME = 2.0
OCDiscount_DEPLOY_WITH_CURRENT_VERSION = yes

ADDITIONAL_INCLUDE_DIRS += -I./discount/ -I./OCDiscount/
ADDITIONAL_LIBS_DIR += -L./discount/
ADDITIONAL_LD_FLAGS += -ldiscount
#
## Public headers (will be installed)
#
OCDiscount_HEADER_FILES_DIR = ./OCDiscount
OCDiscount_HEADER_FILES = \
	NSString+OCDiscount.h\
	OCDiscount.h\
	config.h

#
## Class files
#
OCDiscount_OBJC_FILES = \
	OCDiscount/NSString+OCDiscount.m
#
## Makefiles
#
-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/aggregate.make
include $(GNUSTEP_MAKEFILES)/framework.make
-include GNUmakefile.postamble
