![Cert](.img/ssl.svg)  
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)  
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)  

# java-ssl-tools (jssl)

Install certificate into java keystore and check SSL handshake easily, like

```
$ jssl example.com install
Certificate was added to keystore
```
```
$ jssl example.com ping
Successfully connected to Socket[addr=example.com/93.184.216.34,port=443,localport=64233]
```

No more PKIX error! :)

## How to install

Just run: 
```
curl -sL https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/install.sh | bash
```
for windows, use `Git Bash` or bash enabled powershell as system administrator.


    
## Manual
```
jssl v1.1
Install trusted certificate and check SSL handshake against java keystore.
Usage: jssl <host> <operation> [-p|--port <arg>] [-a|--alias <arg>] [-h|--help] [-v|--version]
	<host>: without https:// and port, eg. google.com
	<operation>: ping, install or uninstall
	-p, --port: port (default: '443')
	-a, --alias: alias in keystore (default: '<host>')
	-h, --help: Prints help
	-v, --version: Prints version
```

## Requirements

* `JAVA_HOME` environment
* `openssl`


