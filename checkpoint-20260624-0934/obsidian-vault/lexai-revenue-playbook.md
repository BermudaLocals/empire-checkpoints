---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# LexAI Revenue Playbook
## From Zero to First Paying Customer

---

## STEP 1 — PayPal Setup (20 minutes)

### Create PayPal Business Account
1. Go to developer.paypal.com
2. Log in with your PayPal account
3. Go to **Apps & Credentials** → Create App → Name it "LexAI"
4. Copy your **Client ID** and **Secret Key**

### Create Subscription Plans
1. Go to paypal.com/billing/plans
2. Create 3 plans:

**Plan 1 — LexAI Starter**
- Price: $99.00 USD/month
- Copy the Plan ID (starts with P-)

**Plan 2 — LexAI Pro**
- Price: $299.00 USD/month
- Copy the Plan ID

**Plan 3 — LexAI Elite**
- Price: $799.00 USD/month
- Copy the Plan ID

### Add to .env
```
nano /var/www/lexai/.env
```
Fill in:
```
PAYPAL_CLIENT_ID=your_client_id
PAYPAL_SECRET=your_secret
PAYPAL_PLAN_STARTER=P-xxxxxxxxxxxxx
PAYPAL_PLAN_PRO=P-xxxxxxxxxxxxx
PAYPAL_PLAN_ELITE=P-xxxxxxxxxxxxx
```
Then: `pm2 restart lexai`

---

## STEP 2 — DNS Setup (5 minutes)

In your domain registrar for lexai.llc:
- Add A record: `@` → `161.97.161.211`
- Add A record: `www` → `161.97.161.211`

Then get SSL:
```bash
certbot --nginx -d lexai.llc -d www.lexai.llc
```

---

## STEP 3 — TikTok Content (Post TODAY)

### Video 1 — The Hook (post immediately)
**Script:**
"POV: You just saved $50,000 in legal fees using AI.
Lawyers charge $500 an hour for this.
LexAI does it in 30 seconds.
Contract drafting. Case law research. Litigation prediction.
This is the future of legal work.
Link in bio."

**Visuals:** Screen record of LexAI working. Dark luxury UI. Gold accents.

---

### Video 2 — The Problem (post tomorrow)
**Script:**
"The legal industry is broken.
A contract review costs $2,000.
A due diligence report costs $10,000.
A litigation assessment costs $5,000.
I built an AI that does all three.
For $299 a month.
LexAI. Link in bio."

---

### Video 3 — Social Proof (post day 3)
**Script:**
"I asked LexAI to review a contract that a lawyer quoted me $3,000 for.
It took 45 seconds.
Found 7 risk clauses.
Suggested 12 amendments.
Saved me thousands.
This changes everything for small business owners."

---

### Video 4 — Urgency (post day 4)
**Script:**
"LexAI launch pricing ends soon.
$99/month for AI legal intelligence that replaces $500/hour lawyers.
I'm raising the price to $199 next week.
Lock in your rate now. Link in bio."

---

## STEP 4 — Direct Outreach (do this today)

### DM these people on LinkedIn/Instagram:
- Solo attorneys and paralegals
- Small law firms (2-10 people)
- Real estate agents (they need contracts)
- Small business owners
- Startup founders

### DM Script:
"Hey [name], I run an AI legal platform called LexAI that does contract drafting, case law research, and litigation prediction in seconds instead of hours. We're offering a 3-day free trial — no card needed. Would this be useful for your work? Happy to show you a demo."

---

## REVENUE PROJECTION

| Customers | Plan | Monthly Revenue |
|-----------|------|----------------|
| 3 | Starter $99 | $297 |
| 5 | Pro $299 | $1,495 |
| 10 | Pro $299 | $2,990 |
| 30 | Pro $299 | $8,970 |
| 100 | Pro $299 | $29,900 |

**To reach $250k:**
- 835 Starter customers, OR
- 278 Pro customers, OR
- Mix of all tiers

**Realistic 90-day target:** 50 customers = ~$10,000-15,000/month

---

## WHAT TO SAY IF SOMEONE ASKS IF IT'S REAL

LexAI uses the most advanced AI models available (Claude, GPT-4) specifically fine-tuned for legal analysis. It does not replace a lawyer for court representation but handles 80% of what lawyers bill for — research, drafting, reviewing, summarising. That's the value proposition.
