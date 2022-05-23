# java-ssl-tools

Install certificates and check SSL handshake easily.

## How to install

Just run: 
```
curl -sL https://raw.githubusercontent.com/pmamico/java-ssl/main/install.sh | bash
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
## Compatibility
|        |    | 
 -- | --
 JDK 11 | ✓
 JDK 17 |  ✓ |
 macOs |  ✓
 Ubuntu |  ✓
Windows 10 |  ✓
Windows 11 |  ✓

## Requirements

* `JAVA_HOME` environment
* `openssl` 