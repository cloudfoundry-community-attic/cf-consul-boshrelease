#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'etcd_metrics_server'\s*running$"
  then
  echo "etcd metric server is running"
else
  echo "etcd metric server is not running"
  exit 2
fi
