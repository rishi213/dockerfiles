## docker-willie

An easy-to-use and highly extensible IRC Bot framework.
http://willie.dftba.net

## Usage
You will need to mount a persistent data volume preferably owned by Willie.

To find out Willie's user/group IDs run:

```
docker run --rm --entrypoint bash nightling/willie -c id
```

Then create a directory (mkdir /path/to/willie) and run chown uid:gid on it.

Interactive first time configuration:

```
docker run -it --rm -v /path/to/willie:/var/lib/willie nightling/willie
```

Start Willie with your existing configuration:

```
docker run --rm --name willie -v /path/to/willie:/var/lib/willie nightling/willie
```
