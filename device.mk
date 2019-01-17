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

LOCAL_PATH := device/htc/k2_u

# Off-mode charging
PRODUCT_PACKAGES += \
    offmode_charging_images \
    offmode_charging

# Charging LED color status
PRODUCT_PACKAGES += \
    chargeled

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Binaries
PRODUCT_PACKAGES += \
    choice_fn \
    detect_key \
    power_test

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_k2_u
PRODUCT_DEVICE := k2_u
