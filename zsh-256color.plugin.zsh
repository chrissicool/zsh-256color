# Copyright (c) 2014, Christian Ludwig
#
# Set 256color terminal mode if available

_zsh_terminal_set_256color()
{
	[[ "$TERM" =~ "-256color$" ]] && return

	local TERM256="${TERM}-256color"

	# search through ncurses terminfo descriptions
	for terminfos in $TERMINFO "$HOME/.terminfo" "/etc/terminfo" "/lib/terminfo" "/usr/share/terminfo" ; do
		if [[ -e "$terminfos"/$TERM[1]/"$TERM256" || \
				-e "$terminfos"/"$TERM256" ]] ; then
			export TERM="$TERM256"
			return
		fi
	done
}

_zsh_terminal_set_256color
unset -f _zsh_terminal_set_256color
