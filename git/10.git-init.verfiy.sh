#!/usr/bin/env bash

set -e

if [[ ! -d ~/demo ]] ; then exit 1 ; fi
if [[ ! -d ~/demo/.git ]] ; then exit 1 ; fi
if [[ ! -f ~/demo/.git/HEAD ]] ; then exit 1 ; fi

diff -q ~/demo/.git/HEAD - <<<"ref: refs/heads/master"
echo "done"
