# zsh/fzf History Search

Simple plugin using fzf for fuzzy history search.

## Installation with znap

Add this to `~/.zshrc`:

```sh
# Fetch and source the plugin
znap source evandurfee/zsh-fzf-history-search
# bind the fuzzy history search widget to ctrl+r
bindkey '^r' fzf-history-search
```

## Functions
- `fzf-history-search [query]`
Search the shell history with fzf, initialized with the given query

## Widgets
- `fzf-history-search`
Runs an fzf history search with the current line buffer, then updates the
buffer with the results.
Unbound by defualt.
```sh
# bind the fuzzy history search widget to ctrl+r
bindkey '^r' fzf-history-search
```