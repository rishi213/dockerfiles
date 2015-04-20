## docker-znc

Docker image for the [ZNC](http://wiki.znc.in/ZNC) IRC Bouncer.

## Usage
You will need to mount a persistent data volume preferably owned by ZNC.

To find out the ZNC user/group IDs (and version) run:

```
docker run -it --rm nightling/znc -v
```

Then create a directory (mkdir /path/to/znc) and run chown uid:gid on it.

Generate a configuration if you're starting from scratch:

```
docker run -it --rm -v /path/to/znc:/znc-data nightling/znc --makeconf
```

Start ZNC and publish the default port:

```
docker run --rm --name znc -p 6667:6667 -v /path/to/znc:/znc-data nightling/znc
```

Modules in /znc-data/modules will be automatically built.
