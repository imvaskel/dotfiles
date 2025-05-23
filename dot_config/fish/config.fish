 if status is-interactive; 

    # Aliases
    alias eza 'eza --icons auto --git -g'
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'

    fzf --fish | source

    set -U FZF_LEGACY_KEYBINDINGS 0
    bind \t complete pager-toggle-search

    zoxide init fish --cmd cd | source
    starship init fish | source
    enable_transience
    

end
