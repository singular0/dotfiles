#!/bin/sh

if command -v vim &>/dev/null; then
  echo "Bootstraping vim"
  vim '+PlugUpdate' '+PlugClean!' '+PlugUpdate' '+qall'
fi

