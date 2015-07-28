#!/usr/bin/env zsh
ROOT="$(dirname "$0:A")"

for config in $(find -H "$ROOT" -name '*.config')
do
	tool="$(basename "${config%.*}")"
	(( $+commands[$tool] )) && source "$config"
done

