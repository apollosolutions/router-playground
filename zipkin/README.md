# OpenTelemetry Traces with Zipkin

- Set the following Router config (you do not need an endpoint):

```yaml
telemetry:
  instrumentation:
    spans:
      mode: spec_compliant
  exporters: 
    tracing: 
      zipkin:
        enabled: true
```

- Start the docker image with Docker compose

```shell
docker-compose up --build
```

- Open the Zipkin UI at http://localhost:9411/zipkin and run an empty search and you should see Router traces
