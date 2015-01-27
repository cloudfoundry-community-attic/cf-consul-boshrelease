#!/bin/bash

if /var/vcap/bosh/bin/monit summary | grep -q "'gorouter'\s*running$"
  then
  echo "gorouter is running"
else
  echo "gorouter is not running"
  exit 2
fi
