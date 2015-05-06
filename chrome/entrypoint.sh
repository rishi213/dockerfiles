#!/bin/sh -e
useradd -d /home/chrome -u ${XUID} chrome 2> /dev/null
chown chrome: /home/chrome /home/chrome/.config/google-chrome
su chrome -c "google-chrome --incognito $@"
