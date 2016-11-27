#!/bin/bash

PROG_NAME=$0
function print_usage() {
    cat << EOF
        Usage: $PROG_NAME
        -b, --build,
        build the image and push it into registery
            -r, --run,
        run the image specified in .Config
            -s, --shell,
        Attach a shell to this container
            -l, --log,
        Show the log for this container
            -i, --info,
        Show info for this container
            --stop,
        stop this container
            --start,
        start this container
            --rmc,
        remove this container
            --rmi,
        remove this image
            -v, --verbose,
        generate more output
            -h, --help,
        print this message
            EOF
}
if [ $# -ne 1 ]
then
print_usage
fi
