#!/bin/sh -e
useradd -d /home/skype -u ${XUID} skype 2> /dev/null
chown skype: /home/skype
su skype -c "skype $@"
