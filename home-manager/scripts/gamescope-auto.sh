#!/usr/bin/env bash
set -e

RES=$(wlr-randr --json | jq -r '.[] | select(.enabled) | .modes[] | select(.current) | "\(.width)x\(.height)"' | head -n 1)

if [[ -z "$RES" ]]; then
    echo "gamescope-auto: couldn't determine active resolution via wlr-randr" >&2
    exit 1
fi

W=${RES%%x*}
H=${RES##*x}

exec gamescope -W "$W" -H "$H" "$@"