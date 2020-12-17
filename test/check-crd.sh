#!/usr/bin/env sh
set -u # -e "Automatic exit from bash shell script on error"  -u "Treat unset variables and parameters as errors"

kubectl get crd issuers.cert-manager.io > /dev/null 2>&1

if [ $? -eq 0 ]
then
  echo "true"
  exit 0
else
  echo "false"
  exit 0
fi