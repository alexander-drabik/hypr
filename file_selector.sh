#!/bin/sh

selected=$(\
	fd . /home/alex --type f --exclude gradle --exclude src --exclude data | \
	grep -v -f /home/alex/.config/hypr/exclude.txt | \
	sed "s|/home/alex/||" | \
	fuzzel --dmenu \
)

if [[ -n "$selected" ]]; then
    xdg-open "$selected"
fi
