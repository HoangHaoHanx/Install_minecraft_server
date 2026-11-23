#!/usr/bin/env sh
cd "$(dirname "$0")" || exit 1
chmod +x ./install_linux_mac.sh
exec sh ./install_linux_mac.sh "$@"
