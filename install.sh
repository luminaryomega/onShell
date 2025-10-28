#!/data/data/com.termux/files/usr/bin/bash
set -e
echo "[⊙Ω] Installing onShell — Quantum Dawn..."
if [ ! -d "$HOME/storage" ]; then
  termux-setup-storage
  sleep 1
fi
DEST="$HOME/LuminaryOmega/onShell"
mkdir -p "$DEST"
cp -r . "$DEST/"
if ! grep -q "ONSHELL BEGIN" "$HOME/.bashrc" 2>/dev/null; then
  cp "$HOME/.bashrc" "$HOME/.bashrc.backup.$(date +%s)" || true
  echo "" >> "$HOME/.bashrc"
  cat "$DEST/configs/.bashrc.append" >> "$HOME/.bashrc"
fi
echo "[⊙Ω] Installed! Restart Termux or run: source ~/.bashrc"
