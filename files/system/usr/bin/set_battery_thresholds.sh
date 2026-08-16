#!/bin/bash

# Ścieżki do plików sterujących
START_FILE="/sys/class/power_supply/BAT0/charge_control_start_threshold"
END_FILE="/sys/class/power_supply/BAT0/charge_control_end_threshold"

# Sprawdzenie czy użytkownik jest rootem
if [ "$EUID" -ne 0 ]; then
  echo "Proszę uruchomić skrypt z uprawnieniami roota (sudo)."
  exit 1
fi

# Ustawienie wartości (kolejność ma znaczenie dla logiki sterownika)
echo 70 > "$START_FILE"
echo 80 > "$END_FILE"

echo "Limity baterii ustawione: start na 70%, end na 80%."
