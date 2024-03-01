# Redis instance
Run the instance with Docker

```shell
docker-compose up --build
```

This can then be used for APQ, Query Plan, or Entity cache

## Monitor cache usage

In a separate terminal run:
```shell
docker exec -it redis-cache-1 redis-cli monitor
```
