#!/bin/sh
printf '\033c\033]0;%s\a' Godot New Project
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Builds.x86_64" "$@"
