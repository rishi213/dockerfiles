## base-gui

A common base image for the **desktop** images in this repository.

The included `entrypoint` script:

 1. Modifies user/group IDs if XUID/XGID environment variables are set.

 2. Enforces ownership of volumes and bind mounts in /data.

 3. Executes the given parameters as "user".

## Usage

Recommended docker run options:

 * `-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY="unix${DISPLAY}"` for graphics via X11

 * `-v /run/user/${UID}/pulse:/run/user/pulse:ro` for sound via PulseAudio

 * `-v /etc/localtime:/etc/localtime:ro` to inherit the timezone

 * `-e XUID=${UID} -e XGID=${GID}` to match user IDs
