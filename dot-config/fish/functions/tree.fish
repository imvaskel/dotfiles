command -q eza; and function tree
    if test -z "$argv" 
        set argv "."
    end
    eza --tree $argv
end
