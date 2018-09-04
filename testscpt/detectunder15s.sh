#!/bin/sh

ack ' 15.0000000'|cut -d':' -f 1|sort -u
