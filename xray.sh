#!/bin/sh
if [ ! -f UUID ]; then
  UUID="65b2d428-569f-4c83-94a3-635ab2c5cfac"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

