echo "Downloading latest Router version"
curl -sSL https://router.apollo.dev/download/nix/v1.37.0-rc.0 | sh

echo "Updating config schema file"
./router config schema > configuration_schema.json
