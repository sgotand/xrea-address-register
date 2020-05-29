#!/bin/sh

set -e

address=$(curl -s ifconfig.me)
if [ $# -gt 0 ]; then
  account=$1
  shift
else
  exit 1
fi

if [ $# -gt 0 ]; then
  server=$1
  shift
else
  exit 2
fi

if [ $# -gt 0 ]; then
  api_key=$1
  shift
else
  exit 1
fi

resp=$(curl -sS -X POST \
  -d "account=${account}" \
  -d "server_name=${server}" \
  -d "api_secret_key=${api_key}" \
  -d "param[addr]=${address}" \
  https://api.xrea.com/v1/tool/ssh_ip_allow)

echo ${resp}
echo ${resp} |grep '"status_code":200' >dev/null 2>/dev/null
