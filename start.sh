#!/bin/bash
Xvfb :0 -screen 0 960x540x24 -nolisten tcp 1>/dev/null 2>&1 &
x11vnc -listen 0.0.0.0 -rfbport 5900 -display :0 -forever 1>/dev/null 2>&1 &
sleep 5
export DISPLAY=:0
echo $@
$@

