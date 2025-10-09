# Sample CI + Bazel (Python + C++)

## Requirements
- Bazel installed
- Linux/Mac (or WSL2)

## Local commands
```bash
bazel build //src/python:app //src/cpp:hello_lib
bazel test //src/python:app_test //src/cpp:hello_test --test_output=errors
./scripts/package_artifacts.sh
```

## CI
- CircleCI runs build, tests, and packaging basic test