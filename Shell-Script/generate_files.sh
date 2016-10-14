#!/bin/sh

echo $(for((i=1;1<=100;i++)); do printf '%s' "${RANDOM:0:1}"; done) | tr '[0-9]'
