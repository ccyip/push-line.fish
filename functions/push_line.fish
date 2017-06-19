function push_line -d "Push current buffer onto the buffer stack and clear current buffer"
    if not count $__push_line_stack >/dev/null
        function __pop_line -e fish_postexec
            pop_line
            if not count $__push_line_stack >/dev/null
                functions -e __pop_line
            end
        end
    end

    set -g __push_line_stack (commandline -C):(commandline) $__push_line_stack
    commandline ""
end
