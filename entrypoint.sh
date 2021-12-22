#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit 1

find . \( -name '*.cmake' -o -name 'CMakeLists.txt' \) -exec cmake-format $* {} \;
exit $?
