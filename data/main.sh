#!/bin/bash
printf "RocketMod Unturned server on Docker\n"

# import
. /data/package.sh

# main
{
   package::update_steamcmd
} || {
    printf "Error: package func update_steamcmd\n"
    exit
}

{
    package::update_rocket
} || {
    printf "Error: package func update_rocket\n"
    exit
}

{
    package::update_unturned
} || {
    printf "Error: package func update_unturned\n"
    exit
}

{
    package::start_server
} || {
    printf "Error: package func start_server\n"
    exit
}