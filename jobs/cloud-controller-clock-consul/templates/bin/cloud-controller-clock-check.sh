#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'cloud_controller_clock'\s*running$"
  then
  echo "Cloud Controller Clock is running"
else
  echo "Cloud Controller Clock is not running"
  exit 2
fi
