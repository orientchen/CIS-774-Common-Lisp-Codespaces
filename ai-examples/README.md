# Lisp in AI — CIS 774 Programming Paradigms

These Common Lisp examples accompany the **Lisp in AI** lecture (19 slides). They are designed for **SBCL in GitHub Codespaces** and use the existing repository environment. No additional packages are required.

## Start

Open this repository in Codespaces, then open **Terminal → New Terminal**. From the repository root, check:

```bash
sbcl --version
```

Run each example using `sbcl --script` from the **repository root**.

## Examples in lecture order

| Lecture slide | File | Concept | Run command |
|---|---|---|---|
| 3 | `tree-traversal.lisp` | Preorder and inorder traversal | `sbcl --script ai-examples/tree-traversal.lisp` |
| 5 | `decision-tree.lisp` | Decision-tree classification with `cond` | `sbcl --script ai-examples/decision-tree.lisp` |
| 7 | `expert-system.lisp` | Facts and a human → mortal rule | `sbcl --script ai-examples/expert-system.lisp` |
| 9 | `graph-representation.lisp` | Directed graph and neighbors | `sbcl --script ai-examples/graph-representation.lisp` |
| 11 | `graph-dfs.lisp` | Depth-first search for a path | `sbcl --script ai-examples/graph-dfs.lisp` |
| 13 | `symbolic-expression.lisp` | Lists as mathematical expressions | `sbcl --script ai-examples/symbolic-expression.lisp` |
| 15 | `symbolic-differentiation.lisp` | Simplified product-rule example | `sbcl --script ai-examples/symbolic-differentiation.lisp` |
| 17 | `rule-based-chatbot.lisp` | Simple rule-based responses | `sbcl --script ai-examples/rule-based-chatbot.lisp` |

Slides 1–2, 4, 6, 8, 10, 12, 14, 16, 18–19 introduce concepts, show diagrams, or summarize applications; they do not need separate code files.

## Expected outputs

| File | Expected result |
|---|---|
| `tree-traversal.lisp` | `Preorder: A B D E C F G` and `Inorder: D B E A F C G` |
| `decision-tree.lisp` | `FLIGHTLESS-BIRD` |
| `expert-system.lisp` | `T` then `NIL` |
| `graph-representation.lisp` | `(B C)` |
| `graph-dfs.lisp` | `(B C)` from loading the graph file, then `(A B D)` |
| `symbolic-expression.lisp` | `+`, `(* X X)`, `(* 3 X)` |
| `symbolic-differentiation.lisp` | `(+ (* 1 X) (* X 1))` |
| `rule-based-chatbot.lisp` | `"Hello! How can I help you?"` then `"Goodbye!"` |

`print` in SBCL may display leading blank lines before results; this is normal.

## Important notes

- **DFS dependency:** `graph-dfs.lisp` loads `graph-representation.lisp` automatically. Run it from the repository root so the relative load path resolves.
- **Expert system:** `mortal-p` checks for a matching `human` fact. This demonstrates the specific rule from the slide, not a general-purpose inference engine.
- **Symbolic differentiation:** `differentiate-product` demonstrates the product-rule output for `(* x x)`. It is not a general derivative function and does not simplify its result to `(* 2 x)`.
- **Tree traversal:** This is a new runnable companion for slide 3. The other seven examples follow the code displayed in the lecture, with minor formatting and standalone-execution adjustments.
- **Chatbot:** This example compares complete input strings; it is not a general natural-language understanding system.

## Interactive use

Start the REPL:

```bash
sbcl
```

Then load and call an example:

```lisp
(load "ai-examples/decision-tree.lisp")
(classify-animal t nil)
```

To reload changes, run the same `load` expression again. Exit with `(quit)`.

## For instructors: integrate into the existing repository

Copy the entire `ai-examples/` directory to the root of `CIS-774-Common-Lisp-Codespaces`. **Keep the existing root `README.md` and `examples/` directory unchanged.** Add a link to this file in the root README:

```markdown
## Lisp in AI lecture

See [AI examples](ai-examples/README.md) for the eight runnable programs that accompany the Lisp in AI lecture.
```
