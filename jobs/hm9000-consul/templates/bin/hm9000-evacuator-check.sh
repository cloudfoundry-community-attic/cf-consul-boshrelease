#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_evacuator'\s*running$"
  then
  echo "hm9000 evacuator is running"
else
  echo "hm9000 evacuator is not running"
  exit 2
fi
