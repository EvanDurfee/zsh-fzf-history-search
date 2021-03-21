# Plugin based off of this standard:
# https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc

# Standard way of getting the plugin directory
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Add the functions to the fpath if the plugin manager hasn't already done so
if [[ $PMSPEC != *f* ]] {
	fpath+=( "${0:h}/functions" )
}

# load the history search function
autoload -Uz -- fzf-history-search .fzf-history-search-widget

# Create a zle widget
zle -N fzf-history-search .fzf-history-search-widget

# # Set up the key binding
# bindkey '^r' fzf-history-search
