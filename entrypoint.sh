#!/bin/bash

set -e

# Allow nginx to stay in the foreground
# so that Docker can track the process properly
nginx -g 'daemon off;'

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"


