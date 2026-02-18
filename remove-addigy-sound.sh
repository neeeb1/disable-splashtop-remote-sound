#!/usr/bin/env bash

splashtopDriverPath=/Library/Audio/Plug-Ins/HAL/SplashtopRemoteSound.driver
killAudio=false

if [[ -d $splashtopDriverPath ]]; then
    echo "Splashtop driver dir exists, attempting to uninstall..."
    rm -rf /Library/Audio/Plug-Ins/HAL/SplashtopRemoteSound.driver

    if [[ -d $splashtopDriverPath ]]; then
        echo "Failed to remove driver..."
    else
        echo "Successfully removed driver"
        if [ $killAudio ]; then
            echo "Restarting audio service..."

            pkill coreaudiod
        fi
    fi
else
    echo "Splashtop driver dir does not exist"
fi