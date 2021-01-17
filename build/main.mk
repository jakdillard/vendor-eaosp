#
# Copyright (C) 2019 The Android Open Source Project
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

# This makefile contains the system_ext partition contents for
# a generic phone or tablet device. Only add something here if
# it definitely doesn't belong on other types of devices (if it
# does, use base_system_ext.mk).

# Override product info for Google Play Services and SafetyNet
ifeq ($(PRODUCT_OVERRIDE_INFO),true)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.tags=release-keys \
    ro.product.product.name=$(PRODUCT_OVERRIDE_NAME) \
    ro.build.flavor=$(PRODUCT_OVERRIDE_NAME)-user \
    ro.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.system.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.product.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.system_ext.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.bootimage.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.odm.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT) \
    ro.vendor.build.fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT)

# Description needs special treatment because it contains spaces
PRIVATE_BUILD_DESC := $(PRODUCT_OVERRIDE_DESC)
endif

