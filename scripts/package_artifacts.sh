#!/usr/bin/env bash
set -euo pipefail

OUT_DIR="dist"
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

if [ -f "bazel-bin/src/python/app" ]; then
  cp bazel-bin/src/python/app "$OUT_DIR/app_py_binary"
fi

if [ -f "bazel-bin/src/cpp/hello_lib" ]; then
  cp bazel-bin/src/cpp/hello_lib "$OUT_DIR/hello_cpp_binary"
fi

tar -czf "$OUT_DIR/artifacts.tar.gz" -C "$OUT_DIR" .
echo "Packaged: $OUT_DIR/artifacts.tar.gz"
