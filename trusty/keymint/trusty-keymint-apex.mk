#
# Copyright (C) 2024 The Android Open-Source Project
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
#

#
# This makefile should be included by devices that choose to integrate
# Keymint HAL via vendor apex

PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service.trusty_tee.cpp \
    android.hardware.security.keymint-service.trusty_tee \

ifeq ($(findstring enabled, $(TRUSTY_SYSTEM_VM)),enabled)
    PRODUCT_PACKAGES += \
        android.hardware.security.keymint-service.trusty_system_vm \

endif
