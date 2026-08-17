# Fitness Insurance Direct — Instantly email creatives

Hosted on **fitnessinsurancedirect.com** via `fitness-pdf-backend/Netlify/email/`.

## Active creative (new campaigns)

| Field | Value |
|-------|--------|
| **Version folder** | `archive/2026-08-connect-v1/` |
| **JPEG** | `CID_Fitness_Creative.jpg` |
| **Instantly HTML** | `instantly_step3.html` |
| **Public JPEG URL** | https://fitnessinsurancedirect.com/email/archive/2026-08-connect-v1/CID_Fitness_Creative.jpg |
| **Prefill variable** | `{{connectquote_url}}` on image + CTA |



## Legacy root files (live campaigns)

These root URLs are still valid for existing Instantly steps:

- https://fitnessinsurancedirect.com/email/CID_Fitness_Creative.jpg
- `instantly_fitness_step3.html` (same HTML; legacy image URL)

Prefer **`archive/2026-08-connect-v1/`** for new campaigns.

## Do not delete old versions

## Regenerate from pdf-backend

```bash
cd ~/GitHub/pdf-backend
node scripts/generate-instantly-email.mjs --segment fitness --version 2026-08-connect-v1
node scripts/extract-creative-jpg.mjs \
  --input ~/Downloads/CID_Creative_Fitness_Embedded.html \
  --output ~/GitHub/fitness-pdf-backend/Netlify/email/archive/2026-08-connect-v1/CID_Fitness_Creative.jpg
```

See `pdf-backend/docs/outreach-claude-playbook.md`.
