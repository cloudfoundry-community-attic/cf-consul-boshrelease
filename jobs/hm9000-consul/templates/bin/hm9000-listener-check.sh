#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_listener'\s*running$"
  then
  echo "hm9000 listener is running"
else
  echo "hm9000 listener is not running"
  exit 2
fi
