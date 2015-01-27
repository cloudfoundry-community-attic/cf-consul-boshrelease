#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_shredder'\s*running$"
  then
  echo "hm9000 shredder is running"
else
  echo "hm9000 shredder is not running"
  exit 2
fi
