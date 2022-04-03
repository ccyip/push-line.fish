function push_line -d "Push current buffer onto the buffer stack and clear current buffer"
    set -l __line (commandline)
    if test -z "$__line"
        return 0
    end

    set -g __push_line_stack (commandline -C):"$__line" $__push_line_stack
    commandline ""
end
