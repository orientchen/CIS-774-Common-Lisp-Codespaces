#!/usr/bin/env bash
set -euo pipefail
for file in examples/first.lisp examples/square.lisp examples/compare.lisp examples/factorial-demo.lisp examples/hypotenuse-demo.lisp examples/my-member.lisp examples/pi-parameter.lisp examples/list-operations.lisp; do
  echo "===== $file ====="
  sbcl --script "$file"
done
