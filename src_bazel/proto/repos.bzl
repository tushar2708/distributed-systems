load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def add_proto_repos():
    # Proto dependencies ( from https://github.com/bazelbuild/rules_proto/releases/tag/6.0.2 )
    http_archive(
        name = "rules_proto",
        sha256 = "6fb6767d1bef535310547e03247f7518b03487740c11b6c6adb7952033fe1295",
        strip_prefix = "rules_proto-6.0.2",
        url = "https://github.com/bazelbuild/rules_proto/releases/download/6.0.2/rules_proto-6.0.2.tar.gz",
    )