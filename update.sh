#!/bin/bash

# This must currently run from the root of the repo
# TODO(benvanik): make this runnable from anywhere (find git directory?)
if [ ! -d ".git" ]; then
  echo "This script must be run from the root of the repository (the folder containing .git)"
  exit 1
fi

# =============================================================================
# Closure Compiler
# =============================================================================
echo "Grabbing latest Closure Templates..."

# TODO(benvanik): compile from source
wget -nv http://closure-templates.googlecode.com/files/closure-templates-for-javascript-latest.zip
unzip -o -q closure-templates-for-javascript-latest.zip
rm closure-templates-for-javascript-latest.zip

echo ""
