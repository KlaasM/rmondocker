#!/bin/bash
printf "RocketMod Unturned server on Docker\n"

# import
. /data/package.sh

# main
update_steamcmd
update_rocket
update_unturned
start_server
