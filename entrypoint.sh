#!/bin/bash

set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Allow nginx to stay in the foreground
# so that Docker can track the process properly
nginx -g 'daemon off;'

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"


