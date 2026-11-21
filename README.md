# Agentic Codespace

A GitHub Codespace with three AI coding agents installed with `npm install -g`:

| Agent | npm package | Command |
|---|---|---|
| OpenCode | `@opencode/cli` | `opencode` |
| Codex | `@openai/codex` | `codex` |
| Claude Code | `@anthropic-ai/claude-code` | `claude` |

## Start it

Click **Code → Codespaces → Create codespace on main**. The three agents are installed
while the codespace is being created.

## Sign in

**OpenCode** (with OpenRouter):

1. In the terminal, type `opencode` and press **Enter**.
2. Type `/connect` and press **Enter**. Start typing `openrouter`, highlight
   **OpenRouter**, and press **Enter**.
3. Paste your OpenRouter API key (get one at <https://openrouter.ai/keys>) and
   press **Enter**.

OpenCode starts with **DeepSeek V4.1 Flash** on OpenRouter, set in
`opencode.json`. Use `/models` to switch models.

Treat your API key like a password: paste it only into OpenCode, never into a
file in the repository.

**Codex**: sign in with your ChatGPT account, or set `OPENAI_API_KEY`.

**Claude Code**: sign in with your Claude account, or set `ANTHROPIC_API_KEY`.

## The course database (Dolt MCP)

OpenCode and Claude Code are already connected to the course's Dolt database
through an MCP server (a plug-in that gives the agent database tools). Just ask
in plain words, for example "What tables are in the database?" or "Show me
sales by company for 2024."

The connection is set in `opencode.json` (OpenCode) and `.mcp.json` (Claude
Code); nothing needs to be installed. The server is:

```
https://bus-mgmt-databases.mcp.mathplosion.com/mcp-dolt-database/sse
```
