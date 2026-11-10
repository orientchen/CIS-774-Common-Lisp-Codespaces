# SBCL Command History with `rlwrap`

By default, the SBCL interactive prompt (REPL) may not support Up Arrow command history in a VS Code or GitHub Codespaces terminal. Use `rlwrap` to add command-line editing and history.

## Install `rlwrap`

In the Linux terminal, run:

```bash
sudo apt-get update
sudo apt-get install -y rlwrap
```

## Start SBCL with command history

```bash
rlwrap sbcl
```

## Keyboard shortcuts

| Key | Function |
| --- | --- |
| ↑ (Up Arrow) | Previous Lisp command |
| ↓ (Down Arrow) | Next Lisp command |
| Ctrl+R | Search command history |
| Ctrl+A | Move to beginning of line |
| Ctrl+E | Move to end of line |

## Example

At the SBCL prompt, enter:

```lisp
(+ 2 3)
```

Then enter:

```lisp
(* 4 5)
```

Press **Up Arrow** to recall `(* 4 5)` and press it again to recall `(+ 2 3)`.

To exit SBCL, enter:

```lisp
(quit)
```

**Note:** Run `rlwrap sbcl` in the Linux terminal, not at the SBCL `*` prompt. You normally install `rlwrap` only once per Codespace environment.
