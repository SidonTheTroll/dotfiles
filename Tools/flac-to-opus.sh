#!/usr/bin/env bash

set -u

find "${1:-.}" -type f -iname '*.flac' -print0 |
    sort -z -V |
while IFS= read -r -d '' f; do
    out="${f%.*}.opus"

    if [[ -e "$out" ]]; then
        echo "SKIP: $out already exists"
        continue
    fi

    echo "Converting: $f"

    if ffmpeg -hide_banner -loglevel warning -nostdin -n \
        -i "$f" \
        -map 0:a:0 \
        -map_metadata 0 \
        -map_chapters 0 \
        -c:a libopus \
        -b:a 256k \
        -vbr on \
        -compression_level 10 \
        -application audio \
        "$out"; then
        echo "SUCCESS: $out"
    else
        rm -f -- "$out"
        echo "FAILED: $f"
    fi
done
