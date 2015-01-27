#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'cloud_controller_worker_[[:digit:]]'\s*running$"
  then
  echo "Cloud Controller Worker is running"
else
  echo "Cloud Controller Worker is not running"
  exit 2
fi
