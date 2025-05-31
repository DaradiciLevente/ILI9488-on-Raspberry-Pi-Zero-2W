#!/bin/bash
echo "$(date): Script start" >> /home/levente/fbcp.log
sleep 35
echo "$(date): Sleep ended, starting fbcp-ili9341" >> /home/levente/fbcp.log

exec /home/levente/fbcp-ili9341/build/fbcp-ili9341 --fbdev /dev/fb0 --display-rotation=270
