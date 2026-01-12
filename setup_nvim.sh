#!/usr/bin/env bash

cleanup() {
	sleep 1
	tput el
	printf '\r exiting\n'
}

trap cleanup EXIT

check_and_make() {

	if [[ "$(uname)" -eq "Darwin" ]]; then
		printf "\r System\t%s" "Darwin"
		tput el
	else
		printf '\r Unknown System' 
		exit 1
	fi
	
	if [[ -d ~/testing/nvim ]]; then
		printf "NVIM: config dir already exists..."
		tput el
	else
		printf " Making config dir"
		sleep 1
		tput el
		printf " Making nvim dir"
		sleep 1
		#mkdir -p ~/testing/nvim
		tput el
		printf " Making lua, lua/core, lua/utils, lua/plugins dir"
		#mkdir -p ~/testing/nvim

		tput cud1


		printf "\rDone"
	fi

}


check_and_make



