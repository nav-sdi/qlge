# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for the Qlogic 10GbE PCI Express ethernet driver
#
EXTRA_CFLAGS += -Wno-implicit-function-declaration -Wno-incompatible-pointer-types
EXTRA_CFLAGS += -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types

obj-m += qlge.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean


qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_devlink.o
