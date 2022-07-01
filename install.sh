#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Mac OS X platform
    sudo curl -o /usr/local/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslinstall && sudo chmod +x /usr/local/bin/sslinstall
    sudo curl -o /usr/local/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslping && sudo chmod +x /usr/local/bin/sslping
    SSLI=/usr/local/bin/sslinstall
    SSLP=/usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # GNU/Linux platform
    sudo curl -o /usr/local/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslinstall && sudo chmod +x /usr/local/bin/sslinstall
    sudo curl -o /usr/local/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslping && sudo chmod +x /usr/local/bin/sslping
    SSLI=/usr/local/bin/sslinstall
    SSLP=/usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # 32 bits Windows NT platform
    curl -o $HOME/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslinstall
    curl -o $HOME/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslping
    SSLI=$HOME/bin/sslinstall
    SSLP=$HOME/bin/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # 64 bits Windows NT platform
    curl -o $HOME/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslinstall
    curl -o $HOME/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/sslping
    SSLI=$HOME/bin/sslinstall
    SSLP=$HOME/bin/sslping
fi

if test -f "$SSLI"; then
    echo "sslinstall successfully installed. ($SSLI)"
else 
    echo "Failed to install sslinstall"
fi

if test -f "$SSLP"; then
    echo "sslping successfully installed. ($SSLP)"
else 
    echo "Failed to install sslping"
fi