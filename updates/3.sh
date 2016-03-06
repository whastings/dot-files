#!/usr/bin/env bash

VENDOR_BIN=$DOT_FILES/scripts/vendor
curl -o $VENDOR_BIN/diff-highlight \
  https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight
chmod +x $VENDOR_BIN/diff-highlight
