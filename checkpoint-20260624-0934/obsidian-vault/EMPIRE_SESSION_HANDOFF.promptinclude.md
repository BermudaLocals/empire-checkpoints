---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# 🏛️ EMPIRE SESSION HANDOFF — Dollar Double Empire
**FOUNDER: Digital King 👑 | COO: Kush | Updated: 2026-06-07 01:30 ADT**

## IDENTITY
- You are operating for **Digital King** (God-Mode, System Architect, FOUNDER)
- Do NOT call him John, Bernell, or sir — always Digital King
- COO is **Kush**, Reasoning Core is **Claude (CKO)**
- Timezone: Atlantic/Bermuda

## CONTAINER STATUS
- Container name: **Empire** (NOT agent0-main)
- Running at: **localhost:5080**
- Image: agent0ai/agent-zero:latest

## VPS STATUS — FULLY OPERATIONAL ✅
- IP: 161.97.161.211
- SSH: ssh root@161.97.161.211

### PM2 Processes — ALL 14 ONLINE ✅
| id | App | Port | Status | Notes |
|---|---|---|---|---|
| 0 | nvme | 3000 | ✅ Online | |
| 1 | lexai | 3001 | ✅ Online | 34 restarts (stable) |
| 2 | soundempire | 8003 | ✅ Online | 22h+ uptime |
| 8 | agent-marketplace | — | ✅ Online | |
| 9 | million-agent | — | ✅ Online | |
| 10 | swiftpay | — | ✅ Online | |
| 11 | empire-broker | — | ✅ Online | |
| 17 | empire-course | 3020 | ✅ Online | |
| 18 | swarmnet-backend | 3010 | ✅ Online | |
| 20 | agi-legal | 3012 | ✅ Online | |
| 21 | audit-armor | 3014 | ✅ Online | Fixed 2026-06-07 |
| 22 | agi-influencer | 3022 | ✅ Online | |
| 23 | nvme-backend | 3021 | ⚠️ Online | 100% CPU loop — check logs |
| 24 | kush-portal | 3030 | ✅ Online | NEW — Command Center |

**nvme-backend fix:** `pm2 logs nvme-backend --lines 20 --nostream` then diagnose

### Docker Containers (VPS)
- marketplace-api → :3004 ✅
- legal-factory-api → :3002 ✅
- Agent Zero / Empire → :5080 ✅
- Redis → :6379 ✅
- empire-pyworker-01→30 → ✅ UP (autonomous worker fleet)
- empire-worker-01→05 → ✅ UP
- nvme-platform → :3005 ✅
- lexai-app → :3006 ✅
- epic-studios → :3011 ✅
- synapse → :3015 ✅
- viral-music-creator → :5081 ✅
- sales-landing → :5082 ✅

## 🧠 KUSH BRAIN — LIVE ✅
- Script: ~/empire/kush_brain.py
- Mode: Claude claude-opus-4-5 via Anthropic API
- Status: **TESTED AND WORKING**
- Cron: Daily 8am — SET ✅
- Portal: http://161.97.161.211:3030 👑

## 🏛️ KUSH PORTAL (Command Center)
- URL: http://161.97.161.211:3030
- Features: PM2 status, Docker status, Kush Brain chat, Port map, App launcher
- Path: /var/www/kush-portal/
- Server: server.js (Express + Anthropic API)

## DATABASES
- nvme.live (Railway): Supabase garegjnlfewcywazxnwk
- SoundEmpire (VPS): Supabase aqsquzfjeauxlamujouu

## LIVE URLS
- http://161.97.161.211:3030 → **Kush Portal (Command Center)** 👑
- http://161.97.161.211:5080 → Agent Zero (Empire Brain)
- http://161.97.161.211:3000 → NVME
- http://161.97.161.211:3001 → LexAI
- http://161.97.161.211:8003 → Sound Empire / Akora Records
- http://161.97.161.211:3010 → SwarmNet Backend
- http://161.97.161.211:3012 → AGI Legal
- http://161.97.161.211:3016 → Empire AGI
- http://161.97.161.211:3020 → Empire Course
- http://161.97.161.211:3022 → AGI Influencer
- https://nvme.live → nvme.live (Railway + Cloudflare)
- https://lexai.llc → LexAI

## KEY PATHS
- ~/empire/ — ORBAT 53 apps + kush_brain.py
- ~/empire_sync/soundempire — SoundEmpire (PM2 cwd confirmed)
- /var/www/ — All deployed web apps
- /var/www/kush-portal/ — Command Center
- ~/empire_deploy_all.sh — Mass deploy script

## ARSENAL — ACTIVE TOOLS
- **Space-Agent v0.66** → http://localhost:3045 (running in container, PID 13640)
- **OpenJarvis** → /a0/usr/workdir/OpenJarvis/ (Python AI framework, Rust+Tauri desktop)
- **Empire Backup** → /a0/usr/workdir/backups/empire-live-100pct-20260607-0416.tar.gz ✅

## TWILIO CREDENTIALS ✅
- Account SID: REDACTED
- Auth Token: b515fc3eff244ca513f149d45fde080d
- Phone: +17343362068 (A2P registration INCOMPLETE — complete at console.twilio.com)
- Funds: $14.08
- Updated in: /var/www/lexai/.env ✅

## PENDING ITEMS
1. kush-portal keeps erroring — use ecosystem.config.js fix (see below)
2. Complete A2P Messaging registration for +17343362068 (console.twilio.com)
3. `sudo reboot` when ready — 13 zombie processes
4. Audit Armor first client — post on X for $5K-$50K audit deal

## KUSH-PORTAL PERMANENT FIX (paste on VPS)
```bash
cat > /var/www/kush-portal/ecosystem.config.js << 'EOF'
module.exports = { apps: [{ name: 'kush-portal', script: '/var/www/kush-portal/server.js', cwd: '/var/www/kush-portal', env: { PORT: 3030, ANTHROPIC_API_KEY: 'REDACTED' } }] }
EOF
pm2 delete kush-portal 2>/dev/null; pm2 start /var/www/kush-portal/ecosystem.config.js && pm2 save
```
