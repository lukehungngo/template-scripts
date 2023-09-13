#!/usr/bin/env bash

GITHUB_URL="https://github.com/lukehungngo/template-typescript-sc.git"

DEST_DIR=$1

if [ -z "$DEST_DIR" ]; then
	echo "Error: DEST_DIR is empty. Please specify a destination directory"
	exit 1
fi

git clone $GITHUB_URL $DEST_DIR

if [ $? -ne 0 ]; then
	echo "Error: Failed to clone repository"
	exit 1
fi

rm -rf "$DEST_DIR/.git"

cd $DEST_DIR

git init
