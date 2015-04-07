#!/bin/sh -e
useradd -d /home/skype -u ${XUID} skype 2> /dev/null
su skype -c "skype $@"
