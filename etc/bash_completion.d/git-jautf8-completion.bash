#!bash
#
# Author:       Denis Vazhenin
# Date:		10/04/2012
#
# Purpose:      Completion to support custom jautf8 conversion tool

_git_jautf8 ()
{
	local subcommands="convert"
	local subcommand="$(__git_find_on_cmdline "$subcommands")"
	
	if [ -z "$subcommand" ]; then
		__gitcomp "$subcommands"
		return
	fi
}
