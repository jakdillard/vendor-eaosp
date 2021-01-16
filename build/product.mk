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

# This makefile contains the product partition contents for
# a generic phone or tablet device. Only add something here if
# it definitely doesn't belong on other types of devices (if it
# does, use base_product.mk).

# AOSP userdebug/eng CLI tools
PRODUCT_PACKAGES += \
    arping \
    gdbserver \
    idlcli \
    iotop \
    iperf3 \
    iw \
    procrank \
    showmap \
    sqlite3 \
    ss \
    strace \
    tracepath \
    tracepath6 \
    traceroute6 \
    procmem \
    curl
    
    # AOSP OpenSSH
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh
