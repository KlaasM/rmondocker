#!/bin/bash
printf "RocketMod Unturned server on Docker\n"

# import
. /data/package.sh

# main
package::update_steamcmd
package::update_rocket
package::update_unturned
package::start_server
