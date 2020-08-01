#!/bin/bash
set -e

if [ -n "$PACKAGES" ]; then
    apt-get update
	apt-get install -y --no-install-recommends $PACKAGES
fi

if [ -n "$INITCMD" ]; then
    /bin/bash -c "${INITCMD}"
fi

if [ -n "${USERID}" ]; then
    USERNAME=user
    adduser --disabled-password --gecos "" --shell /bin/bash $USERNAME
    usermod -g sudo $USERNAME
    passwd -d $USERNAME
    exec /sbin/runuser -u ${USERNAME} "$@"
else
    exec "$@"
fi
