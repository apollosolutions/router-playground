# router-playground
Small repo that has a basic Router config to test enterprise and OSS accounts


### Testing OSS
Run `./start-router-oss.sh`. This will spin up a Router and run the schema in `supergraph-schema.graphql` which points at many subgraphs running at `https://*.demo.starstuff.dev`

## Testing Enterprise
First copy `.env.sample` to your own `.env` file. You can create an API key for this graph in Studio [E-commerce-Fed2@staging](https://studio.apollographql.com/graph/E-commerce-Fed2/variant/staging/home). This graph has an enterprise license.

You can now configure and run enterprise features in `router.yml`.

Start with `./start-router-enterprise.sh`

### Redis Cache

Install [Redis locally](https://redis.io/docs/getting-started/installation/)

```shell
brew install redis
```

Then run the start script

```shell
./start-redis.sh
```

### Prometheus
Install [Prometheus locally](https://prometheus.io/docs/prometheus/latest/installation/)

```shell
brew install prometheus
```

Then run the start script

```shell
./start-prometheus.sh
```
