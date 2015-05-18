#!/bin/bash

echo "# "
echo "# Running Splunk in the foreground..."
echo "# "
/opt/splunk/bin/splunk --accept-license start --nodaemon 2>&1
