# Redis instance
Make sure you have redis installed locally first

```shell
brew install redis
```
Then
```shell
./start-redis.sh
```

This can then be used for APQ, Query Plan, or Entity cache

## Monitor cache usage

In a separate terminal run:
```shell
redis-cli monitor
```
