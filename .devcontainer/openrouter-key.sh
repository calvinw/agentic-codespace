# Sourced by every new terminal (bash or zsh).
# Makes OPENROUTER_API_KEY available to OpenCode:
#   1. from a Codespaces secret, if one is set, or
#   2. from ~/.openrouter_key, if a key was pasted before, or
#   3. by asking for the key once and saving it in ~/.openrouter_key.
# The key is kept in the home folder, never in the repository.

_openrouter_keyfile="$HOME/.openrouter_key"

if [ -z "${OPENROUTER_API_KEY:-}" ]; then
  if [ -s "$_openrouter_keyfile" ]; then
    export OPENROUTER_API_KEY="$(cat "$_openrouter_keyfile")"
  elif [ -t 0 ]; then
    echo ""
    echo "OpenCode needs your OpenRouter API key (https://openrouter.ai/keys)."
    printf "Paste it here and press Enter (nothing shows as you paste), or just press Enter to skip: "
    read -rs _openrouter_key
    echo ""
    if [ -n "$_openrouter_key" ]; then
      (umask 077; printf '%s' "$_openrouter_key" > "$_openrouter_keyfile")
      export OPENROUTER_API_KEY="$_openrouter_key"
      echo "Saved. OpenCode will use this key in every terminal of this codespace."
    else
      echo "Skipped. Open a new terminal to be asked again."
    fi
    unset _openrouter_key
  fi
fi
unset _openrouter_keyfile
