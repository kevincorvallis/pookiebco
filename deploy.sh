#!/bin/bash
# Deploy pookiebco landing page to Cloudflare Pages
set -e

cd "$(dirname "$0")"

# Load env vars
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

npx wrangler pages deploy . --project-name=pookiebco --branch=main
