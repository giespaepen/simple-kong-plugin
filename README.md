# Simple Kong Plugin 

## Requirements
Make sure to have installed `lua` and `luarocks`.
```bash
brew install lua luarocks
```
Also verify that `zip` is installed.


The following luarocks need to be installed as well:
```bash
luarocks install luacheck
```

## Packaging
```bash
make install-dev
make install   # you might need to prefix with `sudo`, depending on your OS
luarocks pack <your-plugin-name>
```

## Dev workflow

```bash
make install
luarocks pack <your-plugin-name>
docker-compose up --force-recreate
```
