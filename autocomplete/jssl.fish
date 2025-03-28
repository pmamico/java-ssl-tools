# fish completion for jssl

# Main operations (2nd argument)
complete -c jssl -n "not __fish_seen_subcommand_from ping install uninstall" -a "ping install uninstall" -d "Operation"

# Common options
complete -c jssl -l port -s p -d "Port number (default: 443)" -r
complete -c jssl -l alias -s a -d "Keystore alias (default: host)" -r
complete -c jssl -l list -s l -d "List installed jssl certs"
complete -c jssl -l help -s h -d "Show help"
complete -c jssl -l version -s v -d "Show version"

# Suggest host (placeholder, no files)
complete -c jssl -n "not __fish_seen_subcommand_from ping install uninstall" -f -a "example.com localhost internal.service" -d "Target host"