function pop_line -d "Pop the previous pushed buffer and load it into current buffer"
    commandline "$__push_line_stack[1]"
    set -e __push_line_stack[1]
end
