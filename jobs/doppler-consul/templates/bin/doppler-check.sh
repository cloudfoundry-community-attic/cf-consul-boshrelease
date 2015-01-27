#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'doppler'\s*running$"
  then
  echo "Doppler is running"
else
  echo "Doppler is not running"
  exit 2
fi
