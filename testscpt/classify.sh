#!/bin/sh

mv $(ack '  2014    10'|cut -d':' -f 1|sort -u) 10/
