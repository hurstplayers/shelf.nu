#!/bin/sh -ex

# Fly.io Dockerfile entrypoint (configured in fly.toml).
#
# The release command on Fly is executed by appending additional arguments to
# the entrypoint.  In our previous setup the script ignored them, which meant
# migrations never ran – the container would immediately start the web server
# and the release machine would stay alive indefinitely.
#
# To fix that we check for extra arguments and execute them directly.  This
# lets `flyctl deploy` run `start.sh npx prisma migrate deploy` and have the
# migration command actually run.  When no arguments are provided we fall back
# to starting the HTTP server normally.

if [ "$#" -gt 0 ]; then
  # exec replaces the shell so the PID remains 1 and signals are forwarded.
  exec "$@"
fi

NODE_ENV=production node ./build/server/index.js
