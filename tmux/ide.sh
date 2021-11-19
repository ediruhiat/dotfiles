#!/bin/sh

tmux new-session \; \
  split-window -v \; \
  split-window -h \; \
  resize-pane -D 11 \; \
  select-pane -t 0 \; \
  send-keys 'nvim' C-m \;
