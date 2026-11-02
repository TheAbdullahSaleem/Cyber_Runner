#!/bin/sh
printf '\033c\033]0;%s\a' Cyber_Runner
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Cyber_Runner.x86_64" "$@"
