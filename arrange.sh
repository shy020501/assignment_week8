#!/bin/bash
for file in files/*; do
  first_char=$(basename "$file" | head -c 1 | tr '[:upper:]' '[:lower:]')
  if [ -d "$first_char" ]; then
    mv "$file" "$first_char"/
  fi
done