# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/sony/shinano-common/BoardConfig.mk
include device/sony/shinano-common/BoardConfigOmni.mk

TARGET_BOOTLOADER_BOARD_NAME := D5803

#Reserve space for data encryption (12656259072-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688

MR_DPI := hdpi
MR_DPI_FONT := 216
MR_KEXEC_MEM_MIN := 0x0ff00000
MR_DEVICE_VARIANTS := z3c

BOARD_KERNEL_CMDLINE += mem=1756M
#BOARD_KERNEL_CMDLINE += mem=90M@0 mem=1666M@255M
BUILD_KERNEL := true

PRODUCT_VENDOR_KERNEL_HEADERS += $(DEVICE_PATH)/kernel-headers
