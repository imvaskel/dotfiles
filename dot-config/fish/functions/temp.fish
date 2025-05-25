function temp --description="Makes a temporary directory and spawns a subshell in it, then cleans up after."
    set -x _TMP_DIR $(mktemp -d)
    pushd $_TMP_DIR >/dev/null

    echo -n "Creating a temporary shell at "
    set_color blue
    echo -n "$_TMP_DIR "
    set_color normal
    echo -n "with shell "
    echo "$SHELL"
    set_color red
    echo "This directory will be deleted after the shell is finished."
    set_color normal

    "$SHELL"
    popd >/dev/null
    rm -r $_TMP_DIR
end
