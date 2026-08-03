function copylast --description "copy last command output to clipboard"
    if test (count $history) -eq 0
        echo "no history found :("
        return 1
    end

    set -l last_cmd $history[1]

    if string match -q "copylast*" $last_cmd
        echo "no infinite loop thx"
        return 1
    end

    if test -n "$WAYLAND_DISPLAY"
        eval $last_cmd | string trim | wl-copy
    else if type -q xclip
        eval $last_cmd | string trim | xclip -sel clip
    else
        echo "err: neither wl-copy nor xclip is installed."
        return 1
    end

    echo "done :p"
end
