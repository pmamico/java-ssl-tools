#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Mac OS X platform
    sudo curl -o /usr/local/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslinstall && sudo chmod +x /usr/local/bin/sslinstall
    sudo curl -o /usr/local/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslping && sudo chmod +x /usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # GNU/Linux platform
    sudo curl -o /usr/local/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslinstall && sudo chmod +x /usr/local/bin/sslinstall
    sudo curl -o /usr/local/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslping && sudo chmod +x /usr/local/bin/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # 32 bits Windows NT platform
    curl -o $HOME/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslinstall
    curl -o $HOME/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslping
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # 64 bits Windows NT platform
    curl -o $HOME/bin/sslinstall -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslinstall
    curl -o $HOME/bin/sslping -s https://raw.githubusercontent.com/pmamico/java-ssl/main/sslping
fi

echo "sslinstall and sslping are successfully installed!"