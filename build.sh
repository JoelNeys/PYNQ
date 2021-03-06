#!/bin/bash

set -e

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

usage () {
echo "$0" >&2
echo "" >&2
echo "Script for building default overlays, microblaze bsp's and binaries." >&2
echo "" >&2
}

checkdeps () {
for f in vivado xsdk; do
	if ! which $f > /dev/null; then
		echo "Could not find required command $f, please ensure it is installed" 2>&1
	exit 1
	fi
done
}

# users can cache bit, hwh, and hdf to speed up the build_bitstreams()
build_bitstreams () {
	local root=$1
	local board=$2
	local orig_dir=$(pwd)
	cd $root/$board
	local overlays=`find . -maxdepth 2 -name 'makefile' -printf '%h\n' | cut -f2 -d"/"`
	for ol in $overlays ; do
		cd $root/$board/$ol
		if [[ -e $ol.bit && -e $ol.hwh ]]; then
			echo "skipping bitstream $ol.bit for $board"
		else
			echo "building bitstream $ol.bit for $board"
			make
		fi
	done
	cd $orig_dir
}

usage
checkdeps

# build all bitstreams since they will be included in the sdist
cd $script_dir/boards
boards=`find . -maxdepth 2 -name '*.spec' -printf '%h\n' | cut -f2 -d"/"`
for b in $boards ; do
	build_bitstreams "$script_dir/boards" "$b"
done
