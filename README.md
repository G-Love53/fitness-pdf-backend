# fitness-pdf-backend

Segment intake + **CID_HomeBase** templates for **Fitness** commercial insurance (`SUPP_FITNESS`). Static site under `Netlify/` posts to **CID-PDF-API** (`POST /submit-quote`) with `bundle_id: "FITNESS_INTAKE"` and `segment: "fitness"`.

## Ops

- **Inbox:** `quotes@fitnessinsurancedirect.com` (configure Gmail app password + poller refresh token on **CID-PDF-API** when that segment is live).
- **Deploy:** In Netlify, **link this GitHub repo** and branch **`main`** (continuous deployment). Publish directory is set in-repo via **`netlify.toml`** → `Netlify/`. Edit `Netlify/index.html` (and push) to change the live form; verify Network tab shows a successful `POST` to CID-PDF-API.

## CID-PDF-API / database

Adding a new `segment_type` requires a Postgres migration on **cid-postgres** and matching `bundles.json` / `forms.json` / poller config on **`pdf-backend`**. See `pdf-backend` migration and config for `fitness` when wired for production.
