#!/bin/bash
docker build -t development .
docker run --rm -p 9000:9000 \
  -v "$HOME/data:/home/data" \
  -v "$HOME/dev:/home/dev" \
  -v "$HOME/.dotfiles:/home/.dotfiles" \
  -t -i development \
  /bin/bash
