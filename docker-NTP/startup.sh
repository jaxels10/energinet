#!/bin/sh
if [ -d /run/chrony ]; then
  chown -R chrony:chrony /run/chrony
  chmod o-rx /run/chrony
  # remove previous pid file if it exist
  rm -f /var/run/chrony/chronyd.pid
fi

if [ -d /var/lib/chrony ]; then
  chown -R chrony:chrony /var/lib/chrony
fi

exec /usr/sbin/chronyd -d -x
