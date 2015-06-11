## docker-willie

An easy-to-use and highly extensible IRC Bot framework.

[willie.dftba.net](http://willie.dftba.net)

## Usage

If you mount /data yourself, it must be writable by the container user:

```
docker run --rm --entrypoint sh nightling/willie -c id
```

Interactive first time configuration:

```
docker run -it --rm -v /path/to/willie:/data nightling/willie
```

Start Willie with your existing configuration:

```
docker run --rm --name willie -v /path/to/willie:/data nightling/willie
```
