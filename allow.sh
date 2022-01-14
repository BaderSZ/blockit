#!/bin/env bash
set -euo pipefail

EXIT_SUCCESS=0
EXIT_FAILURE=1

## Use this script to allow only a few subreddits with a uBlock list.
## Calling: ./allow.sh subreddit1 subreddit2 ... #(without /r/)

ALLOW_URLBASE="@@||reddit.com/r/"

## We could automatically output to a file.
## We'll allow the user to pipe for now...

#OUTPUT="myblocklist.txt"

main() {

	if [[ -z ${@} ]]
	then
		echo -e "No subreddits given!\n"

		echo -e "Usage:"
		echo -e "\t./allow.sh subreddit1 subreddit2 ... >> list.txt  # without /r/\n"
		exit ${EXIT_FAILURE}
	fi

	#cp template.txt myblocklist.txt
	
	cat template.txt

	for subreddit in "${@}"
	do
		echo "${ALLOW_URLBASE}${subreddit}" # >> ${OUTPUT}
	done

	exit ${EXIT_SUCCESS}
}

main ${@}
