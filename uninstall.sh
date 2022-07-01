#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Mac OS X platform
    SSLI=/usr/local/bin/sslinstall
    SSLP=/usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # GNU/Linux platform
    SSLI=/usr/local/bin/sslinstall
    SSLP=/usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # 32 bits Windows NT platform
    SSLI=$HOME/bin/sslinstall
    SSLP=$HOME/bin/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # 64 bits Windows NT platform
    SSLI=$HOME/bin/sslinstall
    SSLP=$HOME/bin/sslping
fi

rm $SSLI
rm $SSLP

if test -f "$SSLI"; then
    echo "Failed to remove sslinstall. Please remove it manually at $SSLI"
else 
    echo "sslinstall is removed"
fi

if test -f "$SSLP"; then
    echo "Failed to remove sslping. Please remove it manually at $SSLP"
else 
    echo "sslping is removed"
fi