#!/bin/bash

# Note that this does not use pipefail
# because if the grep later doesn't match any deleted files,
# which is likely the majority case,
# it does not exit with a 0, and I only care about the final exit.
set -eo

echo "➤ Installing NPM Modules..."
npm install

echo "➤ Preparing Production Build..."
npm run build

echo "➤ Removing node_modules directory..."
rm -rf node_modules

echo "➤ Build Ready!"
