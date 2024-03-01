set -e

# Start a Router with the sample supergraph schema
./router \
  --config router.yml \
  --supergraph supergraph-schema.graphql \
  --dev
