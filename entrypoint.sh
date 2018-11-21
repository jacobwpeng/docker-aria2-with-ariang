#!/bin/sh -
#===============================================================================
#
#          FILE: entrypoint.sh
#        AUTHOR: jacobwpeng
#         EMAIL: pw2191195@gmail.com
#       CREATED: 11/20/18 21:37:31
#         USAGE: ./entrypoint.sh
#   DESCRIPTION: 
#===============================================================================


set -o nounset                         # Treat unset variables as an error

set -e

nginx

CMD="aria2c --conf-path /conf/aria2.conf"

if [ -f /conf/proxychains.conf ]; then
    exec proxychains4 -q -f /conf/proxychains.conf ${CMD}
else
    exec ${CMD}
fi
