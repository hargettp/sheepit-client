#!/bin/bash

#Autodetect cores
if [ $cpu -eq 0 ]; then
    echo No core count specified, autodetected `nproc` cores.
    cpu=`nproc`
fi

echo Starting client.
java -jar /sheep/sheepit-client-all.jar -ui text -login $user_name -password $user_password -cores $cpu -cache-dir /sheep/cache
