## docker-unbound
Docker image for an out of the box, secure DNS resolver.

[Unbound](https://unbound.net) is a validating, recursive, and caching DNS resolver.

Current version: `1.5.3`

## Usage
Start unbound with the included default configuration:

```
docker run --rm --name dns -p 53:53 -p 53:53/udp nightling/unbound
```

You can override the default configuration directory with:

```
-v /path/to/unbound.d:/etc/unbound/conf.d
```

Warning: Recursive queries are allowed by default!
