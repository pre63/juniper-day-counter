#!/bin/bash

# exit if error
set -e

mkdir -p sketch

# Juniper compile
mono juniper/Juniper.exe -s main.jun -o sketch/sketch.ino

# Arduino compile
arduino-cli compile --fqbn arduino:mbed:nano33ble sketch

# Arduino flash
arduino-cli upload -p /dev/cu.usbmodem14101 --fqbn arduino:mbed:nano33ble sketch

date +"%T"