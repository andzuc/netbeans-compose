#!/bin/bash
MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export BASEDIR="${MYDIR}/.."
cd "${BASSEDIR}"

docker compose up -d
