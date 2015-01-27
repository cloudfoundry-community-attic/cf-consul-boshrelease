#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'login'\s*running$"
  then
  echo "login is running"
else
  echo "login is not running"
  exit 2
fi
