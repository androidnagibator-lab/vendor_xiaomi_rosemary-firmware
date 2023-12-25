#
# Copyright (C) 2023 Lineage Os
# Copyright (C) 2023 Andrii Lab
#
# SPDX-License-Identifier: Apache-2.0
# SPDX-License-Identifier: GPL-2.0-only
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),rosemary)

$(info Including firmware for rosemary...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/images/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,images/$(f)))

endif
