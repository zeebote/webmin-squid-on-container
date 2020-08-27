#!/bin/bash
set -e
if [ "$1" = "squid" ]; then
exec /usr/bin/supervisord -n
fi
exec "$@"
