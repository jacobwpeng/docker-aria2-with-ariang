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

exec aria2c --conf-path /conf/aria2.conf
