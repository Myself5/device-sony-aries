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

TARGET_BOOTLOADER_BOARD_NAME := D5803

#Reserve space for data encryption (12656259072-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688

BOARD_KERNEL_CMDLINE += coherent_pool=8M mem=1920M
BUILD_KERNEL := true

MR_DPI := hdpi
MR_DPI_FONT := 216
MR_KEXEC_MEM_MIN := 0x34300000

PRODUCT_VENDOR_KERNEL_HEADERS += device/sony/aries/kernel-headers
