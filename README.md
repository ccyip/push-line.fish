# push-line

Zsh-like push-line feature for [fish-shell].

Here is the description from zsh manual:

```
Push the current buffer onto the buffer stack and clear
the buffer. Next time the editor starts up, the buffer
will be popped off the top of the buffer stack and loaded
into the editing buffer.
```

# Warning

Since fish 3.4.0, this plugin can no longer automatically restore the pushed
commands. See issue #1 for more information. As a result, you would need to
"pop" the commands using a keybinding.

## Install

With [fisherman]

```
fisher add ccyip/push-line.fish
```

## Usage

Two keybindings are defined: `Meta-q` (`Alt-q`) for `push-line`, and `Ctrl-q`
for `pop-line`.

Nested pushing is supported.

A simple use case:

1. Typing a command and realize I have to run another command first.
2. Press `Meta-q` to push current buffer onto the stack.
3. Type and run another command.
4. Press `Ctrl-q` to load my previous command back to the current buffer.
5. Continue editing this command and run it.

[fish-shell]: https://github.com/fish-shell/fish-shell
[fisherman]: https://github.com/fisherman/fisherman
