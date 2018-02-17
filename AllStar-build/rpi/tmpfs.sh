#!/bin/bash
# tmpfs.sh - Create ram filesystems for temporary files
#    Copyright (C) 2018  Jeremy Lincicome (W0JRL)
#    https://jlappliedtechnologies.com  admin@jlappliedtechnologies.com

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Script Start
rm -rf /tmp/* /tmp/.* /var/tmp/* /var/tmp/*.* &>/dev/null
mount -t tmpfs -o noexec,nodev,nosuid,mode=1755,size=100m tmpfs /tmp
mount -t tmpfs -o noexec,nodev,nosuid,mode=1755,size=30m tmpfs /var/tmp
exit 0