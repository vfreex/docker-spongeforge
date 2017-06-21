#!/bin/sh
set -e

# initialize workspace
mkdir -p "$SPONGE_WORKSPACE/mods"
ln -sf "$SPONGE_ROOT/mods/spongeforge-$SPONGE_VERSION.jar" "$SPONGE_WORKSPACE/mods/spongeforge-$SPONGE_VERSION.jar"
chown -R "$SPONGE_USER":"$SPONGE_GROUP" "$SPONGE_WORKSPACE"

# execute user command
exec "$@"
