![Cert](.img/ssl.svg)  
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)  
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)  

# java-ssl-tools

Install certificate into java keystore and check SSL handshake easily.

## How to install

Just run: 
```
curl -sL https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/install.sh | bash
```
for windows, use `Git Bash` or bash enabled powershell as system administrator.

## Quick start

```
# failed to connect, PKIX error
sslping example.com 

# install
sslinstall example.com 

#successful SSL handshake
sslping example.com 
```
    
## Manual
```
SSL handshake check for java. (v1.0)
Usage: sslping [-p|--port <arg>] [-h|--help] <host>
	<host>: without https:// and port, eg. google.com
	-p, --port: port (default: '443')
	-h, --help: Prints help
```
```
SSL certificate install into java keystore. (v1.0)
Usage: sslinstall [-p|--port <arg>] [-a|--alias <arg>] [-h|--help] <host>
	<host>: without https:// and port, eg. google.com
	-p, --port: port (default: '443')
	-a, --alias: alias in keystore (default: <host>
	-h, --help: Prints help
```

## Requirements

* `JAVA_HOME` environment
* `openssl` 

## How to remove
```
curl -sL https://raw.githubusercontent.com/pmamico/java-ssl-tools/main/uninstall.sh | bash
```
for windows, use `Git Bash` or bash enabled powershell as system administrator.


## Credits

Script skeleton generated with https://argbash.io/
