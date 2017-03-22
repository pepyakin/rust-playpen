#!/bin/dash

set -o errexit

RUST_NEW_ERROR_FORMAT=1 TERM=xterm rustc - --target=asmjs-unknown-emscripten -o ./out.js "$@"
printf '\377' # 255 in octal

cat out.js
