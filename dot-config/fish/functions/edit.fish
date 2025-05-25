function edit
    argparse no-gitignore -- $argv

    set -lx FZF_DEFAULT_COMMAND "fd --type f --type d --strip-cwd-prefix --hidden --exclude .git"
    set -q _flag_no_gitignore; and set -a FZF_DEFAULT_COMMAND --no-ignore

    fzf --height 40% \
        --preview 'if test -d {}; eza -a --color=always {}; else; bat --style=numbers --color=always {}; end' \
        --bind 'enter:become($EDITOR {})' \
        -q "$argv"
end
