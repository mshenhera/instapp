#!/bin/bash

set -u

if [[ -n "$@" ]]; then
    if [[ "$1" == "--watch" ]]; then
        scss $1 scss/style.scss:style.css || exit 1
    else
        scss $1 scss/style.scss style.css || exit 1
    fi
else
    scss scss/style.scss style.css || exit 1
fi

