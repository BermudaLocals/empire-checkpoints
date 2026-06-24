---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# KUSH BRAIN INSTRUCTIONS — READ ALL MDs BEFORE BUILDING ANYTHING

## HOW KUSH SHOULD USE THE DRIVES

Before starting ANY build task, Kush must run:

```bash
# Read ALL markdown files across entire empire
find /opt/empire -name "*.md" | sort > /tmp/all-mds.txt
wc -l /tmp/all-mds.txt

# Read key docs first
cat /opt/empire/core/kush/SOUL.md
cat /opt/empire/core/hermes-mythos/README.md
cat /opt/empire/core/hermes-agent-lite/README.md

# Read all app READMEs
find /opt/empire/apps -name "README.md" | xargs -I{} sh -c 'echo "=== {} ===" && cat {}'

# Read all SKILL files
find /opt/empire -name "SKILL.md" | xargs -I{} sh -c 'echo "=== {} ===" && cat {}'

# Read all existing configs
find /opt/empire/agents -name "config.json" | xargs -I{} sh -c 'echo "=== {} ===" && cat {}'
```

## KUSH ORBAT BUILD ORDER

### Step 1 — Read everything first
```bash
find /opt/empire -name "*.md" -o -name "*.json" -o -name "*.yaml" | \
  grep -v node_modules | grep -v .git | \
  xargs -I{} sh -c 'echo "FILE: {}" && head -20 {}'
```

### Step 2 — Map all apps without repos
Apps in empire that need repos built from scratch:
- Check: `ls /opt/empire/apps/` vs full 53-app list
- For each missing: build Node.js/Express app using empire stack
- Stack: Node.js + Express + Neon PostgreSQL + Redis + PayPal + Claude Opus 4.8

### Step 3 — Apply accessibility standard to ALL
Every app UI must have:
```css
--bg: #0A0A14
--accent: #5B8FFF
--text: #F0F0FF
font-size: minimum 16px
contrast: 7:1+ WCAG AAA
no red/green for status — blue + shape + text
```

### Step 4 — Apply legal docs to ALL apps
Every app must have in footer:
- Terms of Service (link)
- Privacy Policy (link)  
- Disclaimer (link)
- Refund Policy (link)
- Accessibility Statement (link)
- Cookie Notice

### Step 5 — Apply pricing template to ALL apps
```
Free Trial: 7 days
Solo: $149/mo
Small: $399/mo  
Mid: $799/mo
Large: $1,497/mo
White Label: $9,997/mo
```

### Step 6 — Apply Kush Foundation checks to ALL code
Before pushing any file:
1. `node --check` every .js file
2. Every function referenced must exist and be exported
3. Every DB column must exist in schema
4. No literal \n, no em-dashes, no hardcoded keys
5. module.exports includes ALL used functions

## LEXAI FULL CAPABILITY LIST

LexAI (lexai.llc) can and should do ALL of these:

### Document Drafting
- NDA / Confidentiality Agreements
- Service Agreements / Freelance Contracts
- Employment Agreements
- Lease Agreements (residential + commercial)
- Partnership Agreements
- Shareholder Agreements
- Terms of Service
- Privacy Policies
- Disclaimers
- Refund Policies
- Accessibility Statements
- Trust Deeds (Bermuda + Wyoming)
- Wills and Testaments
- Power of Attorney
- Letter of Intent
- MOU (Memorandum of Understanding)
- IP Assignment Agreements
- Software License Agreements
- White Label Agreements
- Affiliate Agreements
- Cookie Policies
- DMCA Notices
- Cease and Desist Letters

### Legal Research
- Bermuda case law
- UK case law
- Caribbean jurisdiction law
- Canadian law
- US federal and state law
- Australian law
- Corporate law research
- IP law research
- Employment law by jurisdiction

### Analysis
- Contract risk analysis
- Clause flagging
- Litigation probability prediction
- Compliance checking
- Regulatory analysis

### Empire Services
- Generate TOS/PP/Disclaimer for all 53 apps
- Trust formation documents
- EIN application guidance
- Company formation (Wyoming LLC, Bermuda company)
- GDPR compliance documents
- ADA/accessibility compliance documents

## NVME.LIVE FULL FEATURE SET

Based on brand vision "They Envy Me":

### Core Features
- Creator registration + AI avatar setup
- Content generation (video, image, text, voice)
- Multi-platform auto-posting (13 platforms)
- Fanvue / OnlyFans pipeline
- AI DM automation
- PPV content calendar
- Brand deal finder
- Earnings dashboard
- Analytics (viral score, engagement, revenue)

### Technical Stack
- Backend: Node.js/Express → Railway
- DB: Neon PostgreSQL (separate from LexAI)
- Auth: JWT + session (same pattern as LexAI)
- Payments: PayPal subscriptions
- AI: Claude Opus 4.8 via Anthropic API
- Age verification: Persona (US) + Yoti (UK/EU)
- Storage: Cloudflare R2 or Railway volumes
- Email: Resend

### Age Verification (REQUIRED)
- Gate: at first content access for viewers
- Gate: at payout enrollment for creators
- US: Persona API ($0.50-1/check)
- UK/EU: Yoti API (~$0.20/check)
- Must comply: UK Online Safety Act, EU DSA, US state laws

## ALL EMPIRE APPS THAT NEED BUILDING

Check each one:
```bash
for app in lexai nvme-platform nvme-backend soundempire glowx-live \
  glowx-backend swiftpay dominion synapse nichegenius-agi landing-builder \
  empire-marketplace worker-dashboard vidcraft ai-influencer-studio \
  agi-influencer-agency ai-staffing-engine ai-medical-diagnostics \
  ai-cfo-platform ai-university-platform ai-support creatrix empire-broker \
  SwarmNet-Backend empire-course empire-digital-mastery empire-legal-factory \
  agi-legal-factory nexus-ai-academy nexus-sovereign ppa-mastermind-platform \
  Ai-Avatar-App BermudaObserver profithack-ai Audit-Armor auditarmor-ai \
  AI-Business-Platform NursingMasteryAcademy; do
  echo "=== $app ===" 
  ls /opt/empire/apps/$app 2>/dev/null | head -5 || echo "MISSING"
done
```

## KUSH DAILY SELF-IMPROVEMENT LOOP

```bash
# Run every 6 hours via cron
# 1. Pull all repos
/opt/empire/update-all.sh

# 2. Check LexAI health
curl -s https://lexai-production-5f08.up.railway.app/health

# 3. Check all Railway deployments
# (via Railway CLI or API)

# 4. Scan for errors in PM2
pm2 logs --lines 100 --nostream | grep -i error

# 5. Run syntax check on any recently changed files
find /opt/empire -name "*.js" -newer /tmp/last-check \
  -not -path "*/node_modules/*" | \
  xargs -I{} node --check {}

# 6. Update /tmp/last-check timestamp
touch /tmp/last-check

# 7. Report to Bernell via Telegram
```
