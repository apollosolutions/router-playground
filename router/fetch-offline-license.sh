set -e

# Requires enterprise support
source .env

# Do NOT check in this license file to VCS
rover license fetch --graph-id E-commerce-Fed2 > entitlement.jwt
