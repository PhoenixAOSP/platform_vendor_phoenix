#
# Copyright (C) 2023 PhoenixAOSP.
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

BUILD_DATE ?= $(shell date +%m%d%H%M)

PLATFORM_PHOENIX_RELEASE := Tangelo

# If not set then set to unofficial
ifndef PHOENIX_BUILD_TYPE
    PHOENIX_BUILD_TYPE := UNOFFICIAL
endif

# OTA Updater
PRODUCT_SYSTEM_PROPERTIES += \
    ro.phoenix.version=$(PLATFORM_PHOENIX_RELEASE)-$(PHOENIX_BUILD_TYPE)-$(BUILD_DATE) \
    ro.phoenix.buildtype=$(PHOENIX_BUILD_TYPE) \
    ro.phoenix.device=$(TARGET_DEVICE)
