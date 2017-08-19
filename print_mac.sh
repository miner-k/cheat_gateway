#!/bin/bash

bash get_ip.sh | sort -r  |uniq |awk -F' ' '{print $1,$3}'
