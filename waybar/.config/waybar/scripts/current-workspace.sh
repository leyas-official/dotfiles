#!/bin/bash
hyprctl activeworkspace -j | jq -r '"\(.id)"'
