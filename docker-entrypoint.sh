#!/bin/sh
#
# Entrypoint for the custom kong-container being built in docker-compose.yml
#
set -e

# Install all the rocks you can find
cd /mnt
for rock in *.rock; do
  luarocks install $rock
done
cd /

# Start up Kong
export KONG_NGINX_DAEMON=off

if [[ "$1" == "kong" ]]; then
  PREFIX=${KONG_PREFIX:=/usr/local/kong}
  mkdir -p $PREFIX

  if [[ "$2" == "docker-start" ]]; then
    kong prepare -p $PREFIX

    exec /usr/local/openresty/nginx/sbin/nginx \
      -p $PREFIX \
      -c nginx.conf
  fi
fi

exec "$@"
