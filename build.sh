#!/bin/bash

mono juniper/Juniper.exe -s main.jun -o sketch_may25b/sketch_may25b.ino

arduino-cli upload -p /dev/cu.usbmodem14101 --fqbn arduino:mbed:nano33ble sketch_may25b/