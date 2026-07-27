#!/bin/bash
# Starts a local web server for the site.
# Usage:  ./start.sh
# Then open:  http://localhost:8000
#
# To open it on your PHONE too (same WiFi as this computer):
#   1. Run this script
#   2. Find this computer's local IP: run `hostname -I` in another terminal
#   3. On your phone's browser, go to  http://<that-ip>:8000

PORT=8000
echo "Starting server..."
echo "On this computer, open:  http://localhost:$PORT"
LOCAL_IP=$(hostname -I 2>/dev/null | awk '{print $1}')
if [ -n "$LOCAL_IP" ]; then
  echo "On your phone (same WiFi), open:  http://$LOCAL_IP:$PORT"
fi
echo "Press Ctrl+C to stop."
echo ""
python3 -m http.server "$PORT" --bind 0.0.0.0
