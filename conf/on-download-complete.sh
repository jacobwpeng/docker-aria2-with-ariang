#!/bin/sh -
#===============================================================================
#
#          FILE: on-download-complete.sh
#        AUTHOR: jacowbpeng
#         EMAIL: jacobwpeng@tencent.com
#       CREATED: 11/21/18 09:48:40
#         USAGE: ./on-download-complete.sh
#   DESCRIPTION: 
#===============================================================================


set -o nounset                         # Treat unset variables as an error

set -e

if [[ $2 == 1 ]]; then
    mv $3 /data/
fi
