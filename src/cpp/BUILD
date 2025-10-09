package(default_visibility = ["//visibility:public"])

cc_library(
    name = "hello_lib",
    srcs = ["hello.cc"],
    hdrs = [],
)

cc_test(
    name = "hello_test",
    srcs = ["hello_test.cc"],
    deps = [":hello_lib"],
)
