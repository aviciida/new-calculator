#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x

# Source Directory
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"

# Generate GitVersion.swift
GITVERSION_FILE_PATH=$SOURCE_DIR/Sources/App/App/GitVersion.swift
touch $GITVERSION_FILE_PATH

version=$(git rev-parse --verify HEAD | cut -c 1-7)
curdate=$(date +"%Y/%m/%d")

{
  echo "//"
  echo "//  GitVersion.swift"
  echo "//"
  echo "//  Created by setup.sh on $curdate."
  echo "//"
  echo ""
  echo "internal let GIT_SHA_VERSION = \"$version\""
} > $GITVERSION_FILE_PATH


# Clean git submodules
git submodule foreach --recursive git checkout .

# Download Git Submodules
git submodule update --init --recursive

# Install CocoaPods libraries
pod install

# Copy Xcode Templates
#mkdir -p ~/Library/Developer/Xcode/Templates/Mew
#\cp -f -r ${SOURCE_DIR}/Carthage/Checkouts/Xcode-Templates-Mew/* ~/Library/Developer/Xcode/Templates/Mew/
