#!/bin/sh
DATADIR=/znc-data

id

if [ -d "${DATADIR}/modules" ] && [ -z "$1" ]; then
	for module in $(find "${DATADIR}/modules" -name "*.cpp"); do
		pushd $(dirname $module) > /dev/null
		znc-buildmod $module
		popd > /dev/null
	done
fi

znc --foreground --datadir=$DATADIR $@
