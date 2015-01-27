#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_sender'\s*running$"
  then
  echo "hm9000 sender is running"
else
  echo "hm9000 sender is not running"
  exit 2
fi
