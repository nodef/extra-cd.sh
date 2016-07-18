#!/bin/bash
# M Bole to
# : Sanjay Dutta, Vinod Rathod, Priya Mayekar
function ocd() {

# prepare
local d="$HOME/.config/0rez/ocd"
mkdir -p $d

# options
local x="0"
local a="$*"
local c="${a::1}"
local f="$d/${a:1:${#a}}.ini"
if [[ "$a" == "-" ]]; then
	popd > /dev/null
elif [[ "$c" == "+" ]]; then
	pwd > "$f" && x=1
elif [[ "$c" == "-" ]]; then
	rm -f "$f" && x=1
elif [[ "$c" == "=" ]]; then
	if [[ -f "$f" ]]; then
		pushd $(cat "$f") > /dev/null
	else
		>&2 echo "err: no such shortcut." && x=1
	fi
else
	pushd "$a" > /dev/null
fi

# list directory
if [[ "$x" == "0" ]]; then
	ls --color --group-directories-first
	echo
fi
}
