#!/bin/sh

cp -p /etc/hosts /etc/hosts.orig
cp /setup/hosts /etc/hosts

# Start the ssh server
/etc/init.d/ssh restart

# Execute the CMD
exec "$@"