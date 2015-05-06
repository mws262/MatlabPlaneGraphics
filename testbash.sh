#!/bin/bash
a="$(git diff --cached --exit-code)"
echo $a
b="$(git status --porcelain)"
echo $b
if [ -n "$(git status --porcelain)" ]; then
echo "there are changes";
else
echo "no changes";
fi