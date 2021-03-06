#!/usr/bin/env bash

BASEDIR=$(cd "$(dirname "$0")" && pwd)

GO=${GO:=go} make --quiet -C "$BASEDIR" GOROOT
export GOROOT="$BASEDIR/GOROOT"

exec $GO "$@"
