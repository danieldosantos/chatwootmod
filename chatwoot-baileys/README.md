# Chatwoot + Baileys Docker Image

This folder builds a Baileys-ready Chatwoot image that stays aligned with the official release while enabling the Evolution API workflow.

## Base image
- Uses the latest stable Chatwoot tag (`chatwoot/chatwoot:v4.8.0`) instead of the moving `latest` tag.

## Entrypoint behavior
- Adds `entrypoint.baileys.sh` to set `CHATWOOT_BAILEYS_ENABLED=true`, log startup, and delegate to the upstream Chatwoot entrypoint.

## Environment
- `env.example` lists the required variables for Postgres, Redis, Rails, and the Baileys flag.

## UI integration note
- Chatwoot already offers an “API” inbox option. You can use it to connect Evolution API/Baileys by pointing the webhook/token from Evolution API to this inbox.
- If you want a dedicated “Baileys” tile like the one shown in the Inbox creation screen, it requires modifying the Chatwoot frontend/backend source (this image does not bundle that UI code). You can extend the upstream project, add a custom channel entry, and then rebuild the image using this Dockerfile as a base.
