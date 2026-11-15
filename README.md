# Agentic Codespace

A GitHub Codespace with three AI coding agents installed with `npm install -g`:

| Agent | npm package | Command |
|---|---|---|
| OpenCode | `@opencode/cli` | `opencode` |
| Codex | `@openai/codex` | `codex` |
| Claude Code | `@anthropic-ai/claude-code` | `claude` |

## Add your OpenRouter key first

OpenCode reaches its models through [OpenRouter](https://openrouter.ai). Save
your OpenRouter API key as a **Codespaces secret** named `OPENROUTER_API_KEY`
and it is in every codespace you start from this repo, so you never type it
in. The key stays in your GitHub account, never in the repo.

1. Go to <https://github.com/settings/codespaces>.
2. Under **Codespaces secrets**, click **New secret**.
3. Name: `OPENROUTER_API_KEY`. Value: your OpenRouter key.
4. Under **Repository access**, choose this repo (or your copy of it), then
   click **Add secret**.

Or create the codespace with **Code → Codespaces → ⋯ → New with options**:
GitHub shows a box for `OPENROUTER_API_KEY` and saves what you type as your
secret.

If a codespace is already open when you add the secret, restart it (or run
**Codespaces: Rebuild Container**) to pick it up. To check it is there, run:

```bash
test -n "$OPENROUTER_API_KEY" && echo "key is set" || echo "key is NOT set"
```

## Start it

Click **Code → Codespaces → Create codespace on main**. The three agents are installed
while the codespace is being created.

## Sign in

- `opencode`: with `OPENROUTER_API_KEY` set, pick an OpenRouter model with
  `/models`; no `/connect` needed
- `codex`: sign in with your ChatGPT account, or set `OPENAI_API_KEY`
- `claude`: sign in with your Claude account, or set `ANTHROPIC_API_KEY`
