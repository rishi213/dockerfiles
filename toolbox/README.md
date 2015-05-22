## docker-toolbox

Docker image for debugging and penetration testing.

Here be dragons! Containers do not contain.

## Usage

Start Toolbox with NET_ADMIN and SYS_ADMIN capabilities:

```
docker run -it --rm --cap-add NET_ADMIN --cap-add SYS_ADMIN nightling/toolbox
```

Only as a last resort should you use privileged mode.

Share a running container's volumes, network and IPC namespaces:

```
--net container:$1 --ipc container:$1 --volumes-from $1
```

Sharing PID namespaces is not yet supported by Docker.

Reuse everything from the host system:

```
--net host --ipc host --pid host -v /:/mnt/host
```

## Hints

 * Docker run [reference](https://docs.docker.com/reference/run/)

 * Create shell aliases: [toolbox-aliases.sh](https://github.com/Nightling/dockerfiles/blob/master/toolbox/toolbox-aliases.sh)

 * Use `toolbox-attach` and gdb-server to debug other containers.
