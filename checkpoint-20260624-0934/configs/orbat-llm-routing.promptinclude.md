# 🔱 ORBAT LLM Routing — Cost-Optimized Model Selection

## Rules
- Before executing any task, check this routing table
- Match the task type to the recommended model
- Default to the COST-EFFECTIVE option unless Digital King says otherwise
- If switching models mid-session isn't possible, use the current model but log the recommendation

## Model Roster

| Model ID | Alias | Cost (per 1M tokens) | Strength |
|---|---|---|---|
| `openrouter/anthropic/claude-opus-4` | OPUS | $15 in / $75 out | Supreme strategy, complex architecture |
| `openrouter/anthropic/claude-sonnet-4` | SONNET | $3 in / $15 out | Daily ops, coding, deployment — 80% cheaper |
| `openrouter/google/gemini-2.5-flash` | FLASH | $0.15 in / $0.60 out | Bulk processing, research, mass ops — 99% cheaper |
| `openrouter/deepseek/deepseek-chat-v3` | DEEPSEEK | $0.27 in / $1.10 out | Heavy coding, debugging, refactoring |
| `ollama/empire-kush` (VPS local) | LOCAL | FREE | VPS-side knowledge queries, quick lookups |

## ORBAT Task Routing

### TIER 1 — KUSH (Supreme COO) Tasks → SONNET default, OPUS for strategy
- Empire status checks → SONNET
- ORBAT roll calls → SONNET
- Revenue strategy planning → OPUS
- Guinness target planning → OPUS
- Chain of command decisions → OPUS

### TIER 2-3 — CEO / Engine Room Tasks → SONNET
- Agent deployment → SONNET
- PM2 management → SONNET
- Nginx configuration → SONNET
- SSL/domain management → SONNET
- Database operations → SONNET

### TIER 4 — Revenue & Growth Tasks → SONNET or FLASH
- Revenue analysis → SONNET
- Market research → FLASH
- Competitor scraping → FLASH
- Pricing calculations → FLASH
- Affiliate program setup → SONNET

### TIER 5 — Intelligence & Content → FLASH or DEEPSEEK
- Bulk content generation → FLASH
- Knowledge base indexing → FLASH
- Document processing → FLASH
- Security audits → SONNET
- Legal document review → SONNET

### TIER 7-9 — VPs / Directors / Managers → FLASH
- Routine reports → FLASH
- Status monitoring → FLASH
- Deployment scripts → DEEPSEEK
- Log analysis → FLASH

### TIER 10 — Workers & Infrastructure → FLASH or LOCAL
- Mass file operations → FLASH
- Code generation (bulk) → DEEPSEEK
- VPS knowledge queries → LOCAL (empire-kush on Ollama)
- ChromaDB/vector operations → LOCAL
- Ollama training → LOCAL

## Task Type Quick Reference

| Task Type | Model | Why |
|---|---|---|
| Complex architecture design | OPUS | Needs best reasoning |
| Billion Dollar Infrastructure thinking | OPUS | Strategic depth |
| Daily deployment & ops | SONNET | Good enough, 80% cheaper |
| Code writing / debugging | SONNET or DEEPSEEK | Both excellent at code |
| Bulk file processing | FLASH | Speed + cost for volume |
| Web research / scraping | FLASH | Don't need Opus for Google |
| Knowledge base queries (VPS) | LOCAL | Free, instant, empire-aware |
| Revenue reports | SONNET | Needs accuracy |
| Git operations | SONNET | Reliability matters |
| Email/comms drafting | SONNET | Quality writing |
| Checkpoint pushes | SONNET | Routine but important |
| Mass agent restarts | FLASH | Simple commands |
| Training data processing | LOCAL + FLASH | Keep costs zero where possible |

## Monthly Cost Estimate

| Usage Pattern | Opus Only | With Routing | Savings |
|---|---|---|---|
| Light (50 tasks/day) | ~$300/mo | ~$45/mo | 85% |
| Medium (150 tasks/day) | ~$900/mo | ~$120/mo | 87% |
| Heavy (300+ tasks/day) | ~$1800/mo | ~$200/mo | 89% |

## Implementation

### Agent Zero Settings
- Default model: `openrouter/anthropic/claude-sonnet-4`
- Preset: Balanced (not Max Power)
- Switch to Opus only for strategy sessions with Digital King
- Use subordinate agents with cheaper models for bulk work

### Subordinate Agent Routing
- `researcher` profile → FLASH (cheap bulk research)
- `developer` profile → DEEPSEEK or SONNET (code quality)
- `hacker` profile → SONNET (security needs accuracy)

### VPS Ollama (Free Tier)
- empire-kush model for local knowledge queries
- qwen2.5:3b for fast local processing
- dolphin-llama3 for uncensored analysis

## Digital King Override
If Bernell says "use the best" or "full power" → switch to OPUS
If Bernell says "save money" or "cheap mode" → use FLASH for everything possible
Default: SONNET for balance
