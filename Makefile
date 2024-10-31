# SPDX-License-Identifier: GPL-2.0
EXTRA_CFLAGS += -Wno-implicit-function-declaration -Wno-incompatible-pointer-types
EXTRA_CFLAGS += -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types

obj-m += src/

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

obj-y += src/
