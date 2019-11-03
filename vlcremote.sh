#!/bin/bash

isclem=$(ps -A | grep vlc)
if [ "$1" == "help" ];then
	echo FIP, Jazz24, FMUS, CROJ, DLF, RFI
else
	if [ "$1" == "" ];then
		station="https://live.wostreaming.net/direct/ppm-jazz24aac256-ibc1 &"
	fi
	
	if [ "$1" == "FIP"  ] ;then
		station="http://icecast.radiofrance.fr/fip-midfi.mp3 &"
	fi
	
	if [ "$1" == "Jazz24" ];then
		station="https://live.wostreaming.net/direct/ppm-jazz24aac256-ibc1 &"
	fi
	
	if [ "$1" == "FMUS" ];then
		station="http://icecast.radiofrance.fr/francemusique-midfi.mp3 &"
	fi
	
	if [ "$1" == "CROJ" ];then
		station="http://icecast4.play.cz/crojazz256.mp3 &"
	fi
	
	if [ "$1" == "DLF" ];then
		station="http://st01.dlf.de/dlf/01/128/mp3/stream.mp3 &"
	fi
	
	if [ "$1" == "RFI" ];then
		station="http://live02.rfi.fr/rfimonde-96k.mp3 &"
	fi
	
	
	if [ -z "$isclem" ]; then
		vlc $station &
	else
		killall vlc;
		vlc $station &
	fi
fi
