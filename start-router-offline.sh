# Start an enterprise Router with the sample supergraph schema in offline mode
# Requires that you have the entitlement locally from `fetch-offline-license.sh`

./router \
  --config router.yml \
  --supergraph supergraph-schema.graphql \
  --license ./offline/entitlement.jwt \
  --dev
