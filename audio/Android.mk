#
# Copyright (C) 2017 The Android Open Source Project
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)


ifneq ($(SOC_KANAS_AUDIO),true)
include $(call all-makefiles-under,kanas)
endif 

ifneq ($(SOC_SPRD),true)
include $(call all-makefiles-under,sprddroid)
endif

ifneq ($(SOC_SCX15),true)
include $(call all-makefiles-under,scx15)
endif

ifneq ($(SOC_SCX35),true)
include $(call all-makefiles-under,sc8830)
endif 
