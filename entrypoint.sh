#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit 1

cmake-format $* $(find . -name '*.cmake' -o -name 'CMakeLists.txt') \;
exit $?
