#!/bin/bash
# Ustawienie socketu Bitwarden SSH Agent (Flatpak)
BW_SSH_SOCKET="${HOME}/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"

# Eksportuj zmienną SSH_AUTH_SOCK tylko wtedy, gdy socket fizycznie istnieje
if [ -S "$BW_SSH_SOCKET" ]; then
    export SSH_AUTH_SOCK="$BW_SSH_SOCKET"
fi
