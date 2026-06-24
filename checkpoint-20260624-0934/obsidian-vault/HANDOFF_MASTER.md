---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# DOLLAR DOUBLE EMPIRE — MASTER HANDOFF REPORT
**Operator:** Bernell / Digital King John B Jefferis  
**Date:** June 16–17, 2026  
**Status:** nvme.live SIGNUP LIVE ✅ — Next: PayPal payment flow

---

## WHAT IS DONE (DO NOT REDO)

### nvme.live — Railway
- ✅ Homepage loads at https://nvme.live (frontend served from `/frontend/index.html`)
- ✅ Database connected (Railway Postgres, internal network)
- ✅ User registration works — returns JWT token
- ✅ All tables auto-created on boot via `initDB()` in `server.js`
- ✅ SSL disabled for Railway internal Postgres (`ssl: false` in pool config)
- ✅ `DATABASE_URL` wired via Railway variable reference (built from parts)

### Key fixes committed to `BermudaLocals/nvme-platform` (main branch):
1. `fix: serve frontend static files at root` — added static file serving + root route to server.js
2. `fix: disable SSL for Railway internal Postgres` — changed `ssl: { rejectUnauthorized: false }` to `ssl: false`

### Railway nvme-live service variables (confirmed set):
- `DATABASE_URL` = built from `${{Postgres.PGUSER}}:${{Postgres.PGPASSWORD}}@${{Postgres.RAILWAY_PRIVATE_DOMAIN}}:${{Postgres.PGPORT}}/${{Postgres.PGDATABASE}}`
- `JWT_SECRET` ✅
- `PAYPAL_CLIENT_ID` ✅
- `PAYPAL_SECRET` ✅
- `PAYPAL_ENV` ✅
- `APP_URL` = https://nvme.live ✅

---

## WHAT IS NOT DONE — NEXT BUILD SESSION

### 1. PayPal "Buy Coins" payment flow (PRIORITY — this is the first dollar)
The app has NO payment code. Users can sign up but cannot pay. PayPal keys are already in Railway env. Need to build:

**Route: `POST /api/payments/create-order`**
- Takes `{ coins: 100 }` (or a package name)
- Creates a PayPal order via PayPal Orders API v2
- Returns `{ orderID }` to frontend

**Route: `POST /api/payments/capture-order`**
- Takes `{ orderID }`
- Captures the PayPal payment
- Credits coins to user's wallet in `nvme_users` table (add `coins` column if not exists)
- Returns success

**Frontend coin packages (suggested):**
- 100 coins = $1.99
- 500 coins = $7.99
- 1000 coins = $14.99

**Gift flow already exists** — `/api/gifts/send` already deducts from wallet and credits creator. Just needs coins in the wallet first.

**PayPal SDK to use:**
```bash
npm install @paypal/checkout-server-sdk
```

**Environment already set:**
- `PAYPAL_CLIENT_ID` — in Railway
- `PAYPAL_SECRET` — in Railway  
- `PAYPAL_ENV` — should be `sandbox` for testing, `live` for production

---

### 2. After payment works — test the full money flow:
1. Register user → `/api/auth/register`
2. Buy coins → `/api/payments/create-order` + capture
3. Send gift → `/api/gifts/send`
4. Check earnings → `/api/earnings`

---

## VPS STATUS (161.97.161.211)

### Running on PM2 (confirmed):
- `character-studio` — port 3100, AI video plan generator (WORKING)
- `dws-backend` — keep running

### Known issues on VPS:
- Many ORBAT stub agents were crash-looping (cdo-agent had 72,000+ restarts)
- `/root/trim.sh` was written to stop idle stubs — run with `CONFIRM=1 bash /root/trim.sh` to apply
- Kush (Agent Zero) runs in Docker on port 5080

### Kush / Agent Zero — VPS Docker:
- Container name: `Empire` (or similar)
- Port: 5080
- **Drives NOT mounted in this session** — the SSHFS/Docker volume mount from Windows was discussed in a prior session but not executed in this session
- To check if Kush is running: `docker ps | grep -i empire`
- To restart: `docker start <container_name>`

---

## REPO / DEPLOYMENT FACTS

| App | Repo | Deploy | URL |
|-----|------|--------|-----|
| nvme.live | BermudaLocals/nvme-platform | Railway (nvme-live project) | https://nvme.live |
| LexAI | BermudaLocals/lexai (or similar) | Railway (lexai project) | https://lexai.llc |
| Character Studio | /root/nvme-platform (VPS) | PM2 port 3100 | VPS only |

**Railway builder:** `DOCKERFILE` (not NIXPACKS) — set in `railway.json`  
**Git push auth:** Use GitHub PAT typed directly into VPS — never paste PAT into Claude chat  
**Git remote format:** `https://YOUR_TOKEN@github.com/BermudaLocals/REPO.git`

---

## CREDENTIALS — ROTATION STATUS

| Credential | Status |
|------------|--------|
| Old GitHub PAT (ghp_vxBcAx...) | DELETED — good |
| Anthropic keys exposed in prior sessions | ROTATE if not done |
| OpenRouter key exposed in prior sessions | ROTATE if not done |
| PayPal LIVE client+secret | ROTATE — were exposed in terminal paste |
| Neon password | ROTATE — was exposed |

**Rule going forward:** Never paste full terminal output that includes `.env` contents into chat. Use `env | grep -oE '^[A-Z_]+'` to check variable names only.

---

## EMPIRE REALITY CHECK (keep this honest)

- **Real live apps:** nvme.live, LexAI, character-studio
- **ORBAT agents:** All 49 are identical placeholder stubs — not real agents
- **Kush:** Agent Zero — a real tool YOU drive, not autonomous
- **Revenue:** $0 current. First dollar requires completing the PayPal flow above.
- **Focus order:** nvme.live payment → LexAI → everything else

---

## TO CONTINUE WITH KUSH (Agent Zero)

If picking this up in a new Claude session, tell Claude:
> "I'm Bernell, Dollar Double Empire. nvme.live signup is live on Railway. I need to build the PayPal buy-coins payment flow into server.js in BermudaLocals/nvme-platform. PayPal keys are already in Railway env vars. Stack: Node/Express, PayPal Orders API v2, no Stripe."

If working with Kush directly, give him this same brief. The repo is at `/root/nvme-platform` on the VPS and on GitHub at `BermudaLocals/nvme-platform`.

---

*Generated: June 16, 2026 — end of session*

---

## KUSH (Agent Zero) — FINAL SETUP

### Container
- Image: `agent0ai/agent-zero:latest`
- Name: `agent-zero`
- Port: `5080:80`
- Secret: `dde-kush-c6008b5e1d3be9cacc9af30cf6134cf6`

### Mounts (all survive restarts via volume)
- `empire_humanless_agent-zero-data:/root` — Kush's persistent brain/memory
- `/home/empire:/home/empire` — empire files
- `/root/empire:/root/empire` — empire files
- `/root/skills:/root/skills` — **skills drop folder** (drop .md here from VPS, Kush sees instantly)
- `/mnt/windows/downloads:/vault/downloads` — Windows C:\Downloads sync
- `/mnt/windows/documents:/vault/documents` — Windows C:\Documents sync
- `/mnt/windows/desktop:/vault/desktop` — Windows C:\Desktop sync
- `/mnt/windows/i-drive:/vault/i-drive` — I: drive cold vault

### Kush profile (survives restarts in volume)
- Profile file: `/root/agents/kush/agent.system.role.md`
- Settings: `/root/settings.json` → `"agent_profile": "kush"`
- Restore script: `/root/restore-kush.sh` (runs via cron @reboot)

### Skills drop flow (from Windows PC)
```
scp myskill.md root@161.97.161.211:/root/skills/
```
Kush sees it instantly — no restart needed.

### To restart Kush cleanly
```bash
nano /root/.kush-env  # type ANTHROPIC_API_KEY and OPENROUTER_API_KEY
docker rm -f agent-zero
docker run -d --name agent-zero --restart unless-stopped -p 5080:80 \
  --env-file /root/.kush-env \
  -e AGENT_ZERO_SECRET="dde-kush-c6008b5e1d3be9cacc9af30cf6134cf6" \
  -e LANG=en_US.UTF-8 -e LANGUAGE=en_US:en -e LC_ALL=en_US.UTF-8 -e TZ=UTC -e BRANCH=main \
  -v empire_humanless_agent-zero-data:/root:rw \
  -v /home/empire:/home/empire:rw \
  -v /root/empire:/root/empire:rw \
  -v /root/skills:/root/skills:rw \
  -v /mnt/windows/downloads:/vault/downloads:rw \
  -v /mnt/windows/documents:/vault/documents:rw \
  -v /mnt/windows/desktop:/vault/desktop:rw \
  -v /mnt/windows/i-drive:/vault/i-drive:rw \
  agent0ai/agent-zero:latest && rm /root/.kush-env
```

---

## SESSION 2 ADDITIONS (June 17, 2026)

### Repos cloned to /mnt/windows/i-drive/ on VPS
- hermes-agent-lite
- hermes-mythos  
- empire-swarmnet
- empire-marketplace
- ai-staffing-agency
- Audit-Armor (has BountySniper)

### Skills written to /root/skills/
- empire-context.md — empire overview
- empire-repos.md — repo locations

### Old Kush brain location (Windows I: drive)
- Full brain at: I:\DOLLAR_DOUBLE_EMPIRE\agent-zero-data\
- Mount script: I:\Documents\KUSH_MOUNT_AND_SKILL.ps1
- Bounty Sniper: I:\DOLLAR_DOUBLE_EMPIRE\AuditArmor\BountySniper\SniperDashboard.ps1

### Security actions taken
- Root password changed ✅
- Old Anthropic key exposed — ROTATE at console.anthropic.com
- Old OpenRouter key exposed — ROTATE at openrouter.ai/keys
- VPS password was in KUSH_MOUNT_AND_SKILL.ps1 — now changed ✅
- GitHub PAT exposed in session — rotate at github.com/settings/tokens

### NEXT SESSION priorities
1. Build PayPal buy-coins flow on nvme.live (first dollar)
2. Fix Kush UI — port 5080 not loading in browser
3. Fix LexAI DNS — point lexai.llc A record to 161.97.161.211
4. Wire Honcho memory SDK to Kush
5. Build real ORBAT agents (start with 5 C-suite under Kush)
