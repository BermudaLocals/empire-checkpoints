---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# LexAI Modules — Integration Guide

## Files
1. `lexai-jurisdictions-FULL.js` — Drop in `/public/js/` or require server-side
2. `lexai-jurisdiction-dropdown.html` — Replace existing jurisdiction <select> on any form
3. `lexai-legal-library.html` — Add to homepage (after hero, before pricing)

## Steps

### 1. Add the JS file
```bash
cp lexai-jurisdictions-FULL.js /var/www/lexai/public/js/
```

### 2. Wire jurisdiction dropdown
Replace your current jurisdiction `<select>` block with the contents of `lexai-jurisdiction-dropdown.html`.
Call `getSelectedJurisdiction()` when submitting any form — it handles both the dropdown and the free-text "Other" field.

### 3. Add Legal Library section
Paste `lexai-legal-library.html` into your homepage HTML — recommended position: after the features section, before pricing.

Backend endpoint needed:
```
POST /api/library/expand
Body: { topic: string, jurisdiction: string }
Returns: { content: string }
```
Wire to existing `services/ai.js` — reuse `draftDocument` or add a new `expandLibraryTopic` function.

### 4. Donate link
`/donate` route not yet built — either build it or point to PayPal.me link temporarily.

## Colors (confirmed match)
--bg: #0A0A14
--accent: #5B8FFF
--text: #F0F0FF
--muted: #A0A0CC
