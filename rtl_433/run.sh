#!/usr/bin/with-contenv bashio

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")

echo mqtt://$MQTT_HOST,user=$MQTT_USER

/usr/local/bin/rtl_433 -c /config/rtl_433.conf -F mqtt://$MQTT_HOST,user=$MQTT_USER,pass=$MQTT_PASSWORD,retain=1,devices=rtl_433/[model:-]_[id:-][channel]
