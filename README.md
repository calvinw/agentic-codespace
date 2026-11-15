# Agentic Codespace

A GitHub Codespace with three AI coding agents installed with `npm install -g`:

| Agent | npm package | Command |
|---|---|---|
| OpenCode | `@opencode/cli` | `opencode` |
| Codex | `@openai/codex` | `codex` |
| Claude Code | `@anthropic-ai/claude-code` | `claude` |

## Your OpenRouter key

OpenCode reaches its models through [OpenRouter](https://openrouter.ai), so it
needs your OpenRouter API key in the variable `OPENROUTER_API_KEY`.

**Easiest:** the first time you open a terminal in the codespace, it asks:

```default
Paste it here and press Enter (nothing shows as you paste), or just press Enter to skip:
```

Paste your key and press Enter. It is saved in your codespace's home folder
(not in the repository), and every terminal after that has it. If you delete
the codespace, you paste it again in the next one.

**Or, once for all your codespaces:** save it as a Codespaces secret.

1. Go to <https://github.com/settings/codespaces>.
2. Under **Codespaces secrets**, click **New secret**.
3. Name: `OPENROUTER_API_KEY`. Value: your OpenRouter key.
4. Under **Repository access**, choose your repo, then click **Add secret**.
   For each new repo, edit the secret and add that repo too.

When the secret is set, the terminal does not ask.

To check the key is there:

```bash
test -n "$OPENROUTER_API_KEY" && echo "key is set" || echo "key is NOT set"
```

To change a pasted key, run `rm ~/.openrouter_key` and open a new terminal.

## Start it

Click **Code → Codespaces → Create codespace on main**. The three agents are installed
while the codespace is being created.

## Sign in

- `opencode`: with `OPENROUTER_API_KEY` set, OpenCode turns on OpenRouter by
  itself and starts with DeepSeek V4.1 Flash (set in `opencode.json`). No
  `/connect` needed; use `/models` to switch models.
- `codex`: sign in with your ChatGPT account, or set `OPENAI_API_KEY`
- `claude`: sign in with your Claude account, or set `ANTHROPIC_API_KEY`
