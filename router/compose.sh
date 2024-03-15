set -e

# Compose a new supergraph
rover supergraph compose --config supergraph-config.yaml --output supergraph-schema.graphql
