#!/bin/bash

devices=( "fgext.fam" "fgacct.fam" "fgmkt.fam" "fgsales.fam")

for device in "${devices[@]}"
do
	echo $device
	ssh admin@$device "
	exec backup config ftp /srv/ftp/demo_files/$device.conf 192.168.0.1 root fortinet
	"

done

chmod -R +r *
