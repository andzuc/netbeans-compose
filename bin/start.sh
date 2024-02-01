#!/bin/bash
MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export BASEDIR="${MYDIR}/.."
cd "${BASSEDIR}"

source .env
if ! docker volume inspect "${NETBEANS_CONFIG}" >/dev/null 2>&1 ; then
    echo docker volume create "${NETBEANS_CONFIG}"
    docker volume create "${NETBEANS_CONFIG}"
fi
docker volume inspect "${NETBEANS_CONFIG}"

docker compose up -d
