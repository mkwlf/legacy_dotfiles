#!/bin/bash
# 1. Retrieve current state of branches still available on remote
# 2. Get list of remote branches
# 3. Pass it into egrep through the standard input
# 4. Filter branches that have a remote tracking branch
# 5. Get first column of output which will be branch name
# 6. Pass all branch names into delete branch command
# Note: Since it is using the -d option, it will not delete branches that have not been merged into the branch that you are on when you run this command.
# source: https://stackoverflow.com/a/17029936
git fetch --prune
git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
