#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'loggregator_trafficcontroller'\s*running$"
  then
  echo "Loggregator Trafficcontroller is running"
else
  echo "Loggregator Trafficcontroller is not running"
  exit 2
fi
