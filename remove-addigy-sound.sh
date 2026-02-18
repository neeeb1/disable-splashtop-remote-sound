#!/usr/bin/env bash

splashtopDriverPath=/Library/Audio/Plug-Ins/HAL/SplashtopRemoteSound.driver

[ -d $splashtopDriverPath ] && echo "Splashtop driver dir exists" || echo "Splashtop driver dir does not exist"

if [[ -d $splashtopDriverPath ]]; then
    echo "Splashtop driver dir exists, attempting to uninstall..."
    rm -rf /Library/Audio/Plug-Ins/HAL/SplashtopRemoteSound.driver

    if [[ -d $splashtopDriverPath ]]; then
        echo "Failed to remove driver..."
    fi
else
    echo "Splashtop driver dir does not exist"
fi