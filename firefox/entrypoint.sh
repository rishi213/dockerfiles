#!/bin/sh -e
useradd -d /home/firefox -u ${XUID} firefox 2> /dev/null
chown firefox: /home/firefox /home/firefox/.mozilla
su firefox -c "firefox $@"
