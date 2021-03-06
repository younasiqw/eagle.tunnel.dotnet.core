#!/usr/bin/env bash

if [ $(whoami) = "root" ]; then
    WorkSpace=$(pwd)
    # if command -v dotnet >/dev/null 2>&1; then
    #     $(${Workspace}/scripts/dotnet_install.sh)
    # fi
    cp -rf ${WorkSpace}/publish/usr/* /usr/
    cp -rf ${WorkSpace}/publish/etc/* /etc/
    ln -sf /usr/lib/eagle-tunnel/run.sh /usr/bin/eagle-tunnel
    systemctl daemon-reload
else
    echo "you must install Eagle-Tunnel with root permission."
fi