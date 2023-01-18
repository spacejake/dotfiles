# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jake/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/jake/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jake/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/jake/.fzf/shell/key-bindings.zsh"
