#!/bin/bash
# Convert logo.jpg to favicon.ico - requires ImageMagick: sudo apt install imagemagick
set -e
SRC="assets/img/logo.jpg"
OUT="assets/favicon.ico"
if [ ! -f "$SRC" ]; then
  echo "Error: $SRC not found"
  exit 1
fi
convert "$SRC" -resize 256x256 -define icon:auto-resize=256,128,96,64,48,32,16 "$OUT"
echo "Created $OUT"
