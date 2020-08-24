#!/usr/bin/with-contenv bashio

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")

/usr/local/bin/rtl_433 -c /config/rtl_433.conf -F mqtt://$MQTT_HOST,user=$MQTT_USER,pass=$MQTT_PASSWORD,retain=0,devices=rtl_433/[model:-]_[id:-][channel]
