# Repro steps

```zsh
docker build . --no-cache -t error:latest

docker run -it --rm --name error-repro error:latest bundle exec bundle package
```