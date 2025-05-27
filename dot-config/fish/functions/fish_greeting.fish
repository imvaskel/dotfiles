function fish_greeting
    if command -q cbonsai && test $SHLVL -eq 1
        cbonsai -p
    end

end
