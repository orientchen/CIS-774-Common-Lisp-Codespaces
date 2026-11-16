# CIS 774 — Common Lisp Practice Assignment

Use the [Lisp in AI examples](../ai-examples/README.md) in this repository as a starting point. Complete all three exercises using **SBCL in GitHub Codespaces**. Write and test your own Lisp code; do not modify the instructor examples in `ai-examples/`.

## 1. Tree Traversal

Review [tree-traversal.lisp](../ai-examples/tree-traversal.lisp). In that example, each tree node is represented by a list `(value left-subtree right-subtree)`, with `NIL` for an empty subtree.

Define a new tree:

```lisp
(defparameter *tree2*
  '(10 (5 (3 nil nil) (7 nil nil))
       (15 nil (18 nil nil))))
```

1. Write calls to `preorder` and `inorder` for `*tree2*`. Record the output of each.
2. Write a recursive function `postorder` that returns node values in **left → right → node** order.
3. Test `postorder` on `*tree2*` and record the output.

**Hint:** Follow the structure of `preorder` and `inorder`. Use `append` to combine lists.

## 2. Graph Neighbors and Connectivity

Review [graph-representation.lisp](../ai-examples/graph-representation.lisp), especially the `neighbors` function. The graph consists of **directed edges**.

Define:

```lisp
(defparameter *graph2*
  '((X Y) (X Z) (Y Z) (Z X)))
```

1. Use `neighbors` to find the outgoing neighbors of `X`, `Y`, and `Z`.
2. Write a function `connected-p` that takes two nodes and an edge list, and returns `T` if there is a **direct edge** from the first node to the second, or `NIL` otherwise.
3. Demonstrate your function with these calls:

```lisp
(connected-p 'X 'Y *graph2*)  ; T
(connected-p 'Y 'X *graph2*)  ; NIL
```

**Hint:** You can use `neighbors` and `member`. Connectivity is directional; you do not need to implement graph search.

## 3. Symbolic Derivatives

Review [derivative.lisp](../ai-examples/derivative.lisp). The provided `derivative` function handles constants, the differentiation variable, addition, and multiplication.

1. Use the existing function to differentiate these expressions with respect to `x` and record the results:

```lisp
(derivative '(+ x 5) 'x)
(derivative '(* x y) 'x)
```

2. Extend your copy of `derivative` to handle **subtraction** (`-`) and **division** (`/`), following the existing `cond` structure.
3. Test the added rules with:

```lisp
(derivative '(- x 2) 'x)
(derivative '(/ x 3) 'x)
```

**Hint:** For division, apply the quotient rule: `(u/v)' = (u'*v - u*v') / (v*v)`. Return a symbolic list, just as the original function does. **You do not need to simplify** the resulting expressions.

## Running your work

Create three files containing your solutions, and run them from the repository root:

```bash
sbcl --script tree-practice.lisp
sbcl --script graph-practice.lisp
sbcl --script derivative-practice.lisp
```

Include `(load "ai-examples/tree-traversal.lisp")`, `(load "ai-examples/graph-representation.lisp")`, or `(load "ai-examples/derivative.lisp")` as appropriate; for Exercise 3, copy and extend the `derivative` function in your solution file rather than redefining the repository example. Add `print` or `format` calls to show your test results. Some instructor files print their own demonstrations when loaded; this is normal.

## Submission

Submit **three `.lisp` files** (`tree-practice.lisp`, `graph-practice.lisp`, and `derivative-practice.lisp`) and **one document** containing labeled screenshots of the program output for each exercise. Make sure all three programs run successfully in SBCL and clearly show your test results.
