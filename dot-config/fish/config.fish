 if status is-interactive;

    if command -q eza;
        alias eza 'eza --icons auto --git -g'
        alias la 'eza -a'
        alias ll 'eza -l'
        alias lla 'eza -la'
        alias ls eza
        alias lt 'eza --tree'
    end

    if command -q fzf;
        fzf --fish | source
        set -U FZF_LEGACY_KEYBINDINGS 0
    end


    if command -q zoxide;
        zoxide init fish --cmd cd | source
    end
    if command -q starship; 
        starship init fish | source
        enable_transience
    end


    bind \t complete pager-toggle-search
    fish_add_path "~/.local/bin"
end
