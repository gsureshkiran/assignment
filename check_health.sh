#!/bin/bash
URL="http://a32259491b56a4990819f7963d22edbd-1971057542.ap-south-1.elb.amazonaws.com:5000/health"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$RESPONSE" -eq 200 ]; then
  echo "Health check PASSED: $URL"
else
  echo "Health check FAILED: $URL - Status code: $RESPONSE"
fi
