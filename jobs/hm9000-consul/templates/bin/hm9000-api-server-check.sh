#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_api_server'\s*running$"
  then
  echo "hm9000 api server is running"
else
  echo "hm9000 api server is not running"
  exit 2
fi
