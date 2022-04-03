bind \eq 'push_line'
bind \cq 'pop_line'

function push-line_key_bindings_uninstall -e push-line_key_bindings_uninstall
    bind -e \eq
    bind -e \cq
end
