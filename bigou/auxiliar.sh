#!/bin/bash
[ -e '/root/addComponentsProhibited.sh' ] && /root/addComponentsProhibited.sh || echo 'Not found'
bigou_m.pl "$@"
