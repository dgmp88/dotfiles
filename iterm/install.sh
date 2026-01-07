#!/bin/sh
#
# iTerm2 Dynamic Profile
#
# This symlinks the iTerm profile to the DynamicProfiles directory.

DYNAMIC_PROFILES_DIR="$HOME/Library/Application Support/iTerm2/DynamicProfiles"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create the DynamicProfiles directory if it doesn't exist
mkdir -p "$DYNAMIC_PROFILES_DIR"

# Check if the symlink already exists and points to the correct location
if [ -L "$DYNAMIC_PROFILES_DIR/iTermProfile.json" ]; then
  current_target=$(readlink "$DYNAMIC_PROFILES_DIR/iTermProfile.json")
  if [ "$current_target" = "$SCRIPT_DIR/iTermProfile.json" ]; then
    echo "  iTerm profile already linked"
    exit 0
  fi
fi

# Remove existing file/symlink if present
rm -f "$DYNAMIC_PROFILES_DIR/iTermProfile.json"

# Create the symlink
ln -s "$SCRIPT_DIR/iTermProfile.json" "$DYNAMIC_PROFILES_DIR/iTermProfile.json"

echo "  iTerm profile linked successfully"
