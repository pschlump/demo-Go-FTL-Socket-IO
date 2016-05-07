#!/bin/bash

NN=sio-demo-2016-05-05.json
OF=sio-demo-2016-05-05.out

xx=$( ps -ef | grep goftl| grep -v grep | grep "$NN" | awk '{print $2}' )
if [ "X$xx" == "X" ] ; then	
	:
else
	kill $xx
fi
./goftl -c ./"$NN" > "$OF" &

