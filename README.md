# Agentic Codespace

A GitHub Codespace with three AI coding agents installed with `npm install -g`:

| Agent | npm package | Command |
|---|---|---|
| OpenCode | `opencode-ai` | `opencode` |
| Codex | `@openai/codex` | `codex` |
| Claude Code | `@anthropic-ai/claude-code` | `claude` |

## Start it

Click **Code → Codespaces → Create codespace on main**. When the install finishes, the
terminal prints the three version numbers.

## Sign in

Each agent asks you to log in the first time you run it:

- `opencode`: run `opencode auth login` and pick a provider
- `codex`: sign in with your ChatGPT account, or set `OPENAI_API_KEY`
- `claude`: sign in with your Claude account, or set `ANTHROPIC_API_KEY`

To keep API keys out of the repo, add them as
[Codespaces secrets](https://github.com/settings/codespaces) instead of typing them in.
