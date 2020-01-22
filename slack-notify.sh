#!/bin/bash
echo "Slack notify. Header: $1, Text: $2"

# Slack notification
url="<YOUR_SLACK_INCOMING_WEBHOOK>"
channel="#general"

curl -X POST --data-urlencode "payload={
    \"channel\": \"$channel\", 
    \"mrkdwn\": true, 
    \"username\": \"Job notification\", 
    \"text\": \"*$1* \n$2\",
}" "$url"