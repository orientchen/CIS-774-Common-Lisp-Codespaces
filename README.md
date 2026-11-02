# CIS 774 — Common Lisp with GitHub Codespaces

This repository provides an SBCL (Steel Bank Common Lisp) environment in GitHub Codespaces for classroom examples. **No local Lisp installation is needed.**

## Why is it called Steel Bank Common Lisp?

The name **Steel Bank Common Lisp (SBCL)** honors the history of **Carnegie Mellon University (CMU)**, where its predecessor, CMU Common Lisp (CMUCL), was developed:

- **Steel** refers to **Andrew Carnegie**, whose fortune came from the steel industry.
- **Bank** refers to **Andrew Mellon**, whose fortune came from banking.

SBCL was forked from CMUCL in 1999 by **William Newman**. We also recognize **Guy L. Steele Jr.** for his important contributions to the development and standardization of Common Lisp, including *Common Lisp the Language*. Although his surname resembles “Steel,” **the SBCL name does not refer to him**.

Historical sources: [SBCL — History and Copyright](https://www.sbcl.org/history.html); [Computer History Museum — Common Lisp family](https://softwarepreservation.computerhistory.org/LISP/common_lisp_family.html).

## Start a Codespace

1. Open the GitHub repository.
2. Click **Code → Codespaces → Create codespace on main**.
3. Wait for the container to build and VS Code to open.
4. Open **Terminal → New Terminal** and verify:

   ```bash
   sbcl --version
   ```

5. Run an example:

   ```bash
   sbcl --script examples/first.lisp
   sbcl --script examples/square.lisp
   sbcl --script examples/compare.lisp
   sbcl --script examples/factorial-demo.lisp
   sbcl --script examples/hypotenuse-demo.lisp
   sbcl --script examples/my-member.lisp
   sbcl --script examples/pi-parameter.lisp
   sbcl --script examples/list-operations.lisp
   ```

Or run all examples from the repository root:

```bash
bash run-all.sh
```

## Interactive Lisp REPL

Run `sbcl`, type an expression such as `(+ 2 3)`, and press Enter. Exit with `(quit)`.

To load function definitions interactively:

```lisp
(load "examples/factorial.lisp")
(factorial 5)
(load "examples/hypotenuse.lisp")
(hypotenuse 3 4)
```

**Note:** A file containing only `defun` definitions may print nothing when run with `--script`. Use the REPL or the `-demo.lisp` files to see output.

## Files

- `examples/`: Runnable examples and demos.
- `originals/`: Original uploaded source files, unchanged, including duplicate versions.
- `notes/`: Uploaded Windows installation instructions and lecture slides.
- `.devcontainer/`: Ubuntu-based Codespaces image with SBCL installed.

## Changes made for runnable examples

- `examples/list-operations.lisp`: Fixed the missing parenthesis in the original text, and omitted `(car 'A)` because it causes a type error. The original text is preserved under `originals/`.
- `examples/pi-parameter.lisp`: Uses `*approx-pi*` instead of `pi`, because `CL:PI` is a defined constant in Common Lisp and cannot be redefined with `defparameter`.
- `examples/compare.lisp`: Uses `compare-numbers` and correct comparison messages; original versions are preserved.
- Demo wrappers print results for functions that otherwise only define functions.

## Lecture slide references

The attached *Lisp in AI* slide deck mentions `tree-traversal.lisp`, `tiny-expert.lisp`, `graph-neighbors.lisp`, `symbolic-expression.lisp`, and `tiny-genetic.lisp`. Those source files were **not among the uploaded Lisp files**, so they are not included or reconstructed here. Add them when available.

## Notes for instructors

Codespaces are cloud development environments. GitHub account eligibility, quotas, and billing are controlled by GitHub. The initial container build requires internet access. Examples use Common Lisp syntax, not Scheme or Clojure.
