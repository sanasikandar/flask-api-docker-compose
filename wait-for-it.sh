#!/usr/bin/env bash
# wait-for-it.sh from https://github.com/vishnubob/wait-for-it

host="$1"
shift
port="$1"
shift

until nc -z "$host" "$port"; do
  >&2 echo "Waiting for $host:$port..."
  sleep 1
done

>&2 echo "$host:$port is up. Starting app..."
exec "$@"
