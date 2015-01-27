#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'dea_next'\s*running$"
  then
  echo "DEA logging agent is running"
else
  echo "DEA logging agent is not running"
  exit 2
fi
