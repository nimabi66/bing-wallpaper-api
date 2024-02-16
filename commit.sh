#!/bin/sh
set -e

if test -z "$(git status -s)"; then
  echo 'no commit'
  exit 0;
else
  git config --local user.email "nimabi66@xzmail.cloudns.org"
  git config --local user.name "nimabi66"
  git pull origin master
  git add data/*
  git commit -m "update bing json"
fi
