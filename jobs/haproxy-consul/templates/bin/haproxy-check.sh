#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'haproxy'\s*running$"
  then
  echo "haproxy is running"
else
  echo "haproxy is not running"
  exit 2
fi
