#!/bin/bash

# activate a virtual environment
source pyenv/bin/activate
wal -R -n

deactivate

# set the background image
feh --bg-max "$(< "${HOME}/.cache/wal/wal")"
