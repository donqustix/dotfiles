#!/bin/bash

source pyenv/bin/activate
wal -R -n

deactivate

feh --bg-max "$(< "${HOME}/.cache/wal/wal")"
