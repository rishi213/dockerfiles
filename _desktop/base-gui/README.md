## base-gui

A common base image for **desktop** images based on **Fedora**.

The included `entrypoint` script:

 1. Modifies user/group IDs if XUID/XGID environment variables are set.

 2. Enforces ownership of volumes and bind mounts in /data.

 3. Executes the given parameters as "user".

Recent RPM Fusion installers are available in `/usr/src/rpmfusion`.

## Usage

Recommended docker run options:

 * `-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY="unix${DISPLAY}"` for graphics via X11

 * `-v /run/user/${UID}/pulse:/run/user/pulse:ro` for sound via PulseAudio

 * `-v /etc/localtime:/etc/localtime:ro` to inherit the timezone

 * `-v /etc/machine-id:/etc/machine-id:ro` to inherit the machine ID

 * `-e XUID=${UID} -e XGID=${GID}` to match user IDs

 * `--device /dev/dri` to allow direct access to the graphics card(s)

 * `--device /dev/snd` to allow direct access to audio devices

## Host requirements

 * Docker 1.7+

 * X11/XWayland

 * Pulseaudio

Best compatible with Fedora based systems.
