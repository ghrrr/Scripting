#!/bin/bash

cat /dev/urandom | tr -dc '0-9' | fold -w 3 | head -n 100
