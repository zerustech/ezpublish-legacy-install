#!/bin/bash 

prefix=install-ez-legacy
SCRIPT_PATH=`dirname "$0"`
SCRIPT_PATH=`( cd "$SCRIPT_PATH" && pwd )`

cd "$SCRIPT_PATH/../.."

patch -p1 < $prefix/patches/config-config.yml.1.patch
patch -p1 < $prefix/patches/config-routing.yml.1.patch
patch -p1 < $prefix/patches/ez-EzPublishKernel.php.1.patch

cd $SCRIPT_PATH

