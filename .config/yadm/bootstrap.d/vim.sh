#!/bin/sh

if command -v vim >/dev/null 2>&1; then
  echo "Bootstraping vim"
  vim '+PlugUpdate' '+PlugClean!' '+PlugUpdate' '+qall'
fi

