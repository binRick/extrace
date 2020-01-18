#!/bin/bash
set -ex
sudo ./extrace -tuj 2>/dev/null|grep '^{'|jq
