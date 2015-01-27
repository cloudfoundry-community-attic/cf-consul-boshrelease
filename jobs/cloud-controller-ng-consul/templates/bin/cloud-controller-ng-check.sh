#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'cloud_controller_ng'\s*running$"
  then
  echo "Cloud Controller is running"
else
  echo "Cloud Controller is not running"
  exit 2
fi
