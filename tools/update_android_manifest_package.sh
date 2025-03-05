#!/usr/bin/env bash

# check if SOURCE_DIR variable is set
if [ -z "$SOURCE_DIR" ]; then
    MANIFEST_FILE=android/AndroidManifest.xml
else
    MANIFEST_FILE=$SOURCE_DIR/android/AndroidManifest.xml
fi

echo "Adjusting package name for daily build"
QGC_PKG_NAME="org.mavlink.qgroundcontrolbeta"
sed -i -e 's/package *= *"[^"]*"/package="'$QGC_PKG_NAME'"/' $MANIFEST_FILE
