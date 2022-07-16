# push-line

Zsh-like push-line feature for [fish-shell].

Here is the description from zsh manual:

```
Push the current buffer onto the buffer stack and clear
the buffer. Next time the editor starts up, the buffer
will be popped off the top of the buffer stack and loaded
into the editing buffer.
```

## Install

With [fisherman]

```
fisher add ccyip/push-line.fish
```

## Usage

The only keybinding is `Meta-q` (`Alt-q`), which runs `push-line`.

Nested pushing is supported.

A simple use case:

1. Typing a command and realize I have to run another command first.
2. Press `Meta-q` to push current buffer onto the stack.
3. Type and run another command.
4. My previous command is automatically popped off the stack and loaded to current buffer.
5. Continue editing this command and run it.

[fish-shell]: https://github.com/fish-shell/fish-shell
[fisherman]: https://github.com/fisherman/fisherman

## Warning

This plugin does not work with fish 3.4.x, due to
https://github.com/fish-shell/fish-shell/issues/8807.
