set -e

# First hit to load APQ
echo
echo "Operation 1 with query"
curl http://localhost:4000 -X POST --json \
'{"query": "{ products { id primaryImage } }","extensions":{"persistedQuery":{"version":1,"sha256Hash":"80fc01715ea3fbffc94b7d5a41c475bcaab900f8e59362101baa141af87fe9c0"}}}'

# Additional operation to load APQ
echo
echo "Operation 2 with query"
curl http://localhost:4000 -X POST --json \
'{"query": "{ products { primaryImage } }","extensions":{"persistedQuery":{"version":1,"sha256Hash":"abd7c0015e3d6e50a66d017ad6e1f505bba9a231876c605f427829629abeccd8"}}}'
