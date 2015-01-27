#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'hm9000_fetcher'\s*running$"
  then
  echo "hm9000 fetcher is running"
else
  echo "hm9000 fetcher is not running"
  exit 2
fi
