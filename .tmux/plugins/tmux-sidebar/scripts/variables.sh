VAR_KEY_PREFIX="@sidebar-key"
REGISTERED_PANE_PREFIX="@-sidebar-registered-pane"
REGISTERED_SIDEBAR_PREFIX="@-sidebar-is-sidebar"
MINIMUM_WIDTH_FOR_SIDEBAR="71"

TREE_KEY="Tab"
TREE_OPTION="@sidebar-tree"

TREE_FOCUS_KEY="Bspace"
TREE_FOCUS_OPTION="@sidebar-tree-focus"

TREE_COMMAND="tree"
TREE_COMMAND_OPTION="@sidebar-tree-command"

TREE_PAGER='sh -c "LESS= less --dumb --chop-long-lines --tilde --IGNORE-CASE --RAW-CONTROL-CHARS"'
TREE_PAGER_OPTION="@sidebar-tree-pager"

TREE_POSITION="left"
TREE_POSITION_OPTION="@sidebar-tree-position"

TREE_WIDTH="40"
TREE_WIDTH_OPTION="@sidebar-tree-width"

SUPPORTED_TMUX_VERSION="1.9"

sidebar_dir() {
	local DIR_XDG="${XDG_DATA_HOME:-$HOME/.local/share}/tmux/sidebar"
	local DIR_OLD="$HOME/.tmux/sidebar"

	if [ -d "$DIR_XDG" ]; then
		echo "$DIR_XDG"
	elif [ -d "$DIR_OLD" ]; then
		echo "$DIR_OLD"
	else
		echo "$DIR_XDG"
	fi
}

SIDEBAR_DIR="$(sidebar_dir)"
