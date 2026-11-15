#!/bin/bash
# Run once when the codespace is created: have bash and zsh load
# openrouter-key.sh in every new terminal.
line="source \"$(pwd)/.devcontainer/openrouter-key.sh\""
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  touch "$rc"
  grep -qxF "$line" "$rc" || echo "$line" >> "$rc"
done
