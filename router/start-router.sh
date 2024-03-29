set -e

# Start the enterprise graph sourcing the graph ref and API key from .env
source .env

./router \
  --config router.yml \
  --supergraph supergraph-schema.graphql \
  --dev
