# router-playground
Small repo that has a basic Router config to test enterprise and OSS accounts


### Testing OSS
Run `./start-router-oss.sh`. This will spin up a Router and run the schema in `supergraph-schema.graphql` which points at many subgraphs running at `https://*.demo.starstuff.dev`

## Testing Enterprise
First copy `.env.sample` to your own `.env` file. You can create an API key for this graph in Studio [E-commerce-Fed2@staging](https://studio.apollographql.com/graph/E-commerce-Fed2/variant/staging/home). This graph has an enterprise license.

You can now configure and run enterprise features in `router.yml`.

Start with `./start-router-enterprise.sh`

### Starting other dependencies

Various other directories exist for the different dependencies you might use when running a Router locally.
We have Zipkin for OpenTelemetry traces, Redis for the APQ cache, coprocessor in NodeJS, etc.
Check out the README in each folder to learn more on how to start and use those.
