#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'nats_stream_forwarder'\s*running$"
  then
  echo "nats stream forwarder is running"
else
  echo "nats stream forwarder is not running"
  exit 2
fi
