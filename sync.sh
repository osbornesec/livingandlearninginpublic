#!/bin/bash

SOURCE_DIR="/home/michael/Documents/Ideaverse/"
DEST_DIR="/home/michael/Documents/quartz/content/"

while true; do
    rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"
    inotifywait -r -e modify,create,delete "$SOURCE_DIR"
done
