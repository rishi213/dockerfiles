## docker-unbound
Docker image for an out of the box, secure DNS resolver.

[Unbound](https://unbound.net) is a validating, recursive, and caching DNS resolver.

## Usage
Warning: Recursive queries are allowed by default!

Start unbound with the default configuration:

```
docker run --rm --name dns -p 53:53 -p 53:53/udp nightling/unbound
```

You can override the local configuration directory with:

```
-v /path/to/unbound:/etc/unbound/conf.d:ro
```

But first, you have to run unbound-control-setup:

```
docker run --rm -v /path/to/unbound:/etc/unbound/conf.d nightling/unbound \
unbound-control-setup -d /etc/unbound/conf.d
```

Accessing unbound-control in a running container:

```
docker exec dns unbound-control --help
```
