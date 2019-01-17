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

# Release name
PRODUCT_RELEASE_NAME := k2_u

# Inherit some common Omni stuff. CDMA Configuration.
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/k2_u/device.mk)

# Prebuilt Kernel
PRODUCT_COPY_FILES += device/htc/k2_u/prebuilt/kernel:kernel

# Not in use by me for TWRP which is why I check with "if"
# Really only needed if attempting to build CM or other custom Roms
# In this case we are merely building a custom recovery
$(call inherit-product-if-exists, vendor/htc/k2_u/k2_u-vendor.mk)


PRODUCT_DEVICE := k2_u
PRODUCT_NAME := omni_k2_u
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One SV
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=k2_u
