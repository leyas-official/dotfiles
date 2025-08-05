#!/bin/bash

hyprctl clients -j | jq -r '
  [.[] 
   | select(.class != "kitty") 
   | .workspace.id
  ] 
  | map("[" + tostring + "]") 
  | join(" ")'
