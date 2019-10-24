#!/bin/sh
# provided by https://github.com/arjanfrans - thx
git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
