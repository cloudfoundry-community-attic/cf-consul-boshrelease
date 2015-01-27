#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_metrics_server'\s*running$"
  then
  echo "hm9000 metrics server is running"
else
  echo "hm9000 metrics server is not running"
  exit 2
fi
