#
# Cookbook Name:: xbmc
# Attribute File:: live
#
# Copyright 2010, Fletcher Nichol
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:authorization][:sudo][:extensions] << <<-SUDO
  ### XBMC-specific configuration ###
  # XBMC
  Cmnd_Alias SHUTDOWN_CMDS = /sbin/shutdown, /sbin/reboot, /sbin/halt # XBMC
  Cmnd_Alias MOUNT_CMDS = /bin/mount, /bin/umount # XBMC
  xbmc ALL=NOPASSWD: SHUTDOWN_CMDS, MOUNT_CMDS # XBMC
SUDO
