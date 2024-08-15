workspace(name = "distributed_systems")


# Java dependencies ( from https://github.com/bazelbuild/rules_java/releases/tag/7.9.0 )

# load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
# http_archive(
#     name = "rules_java",
#     urls = [
#         "https://github.com/bazelbuild/rules_java/releases/download/7.9.0/rules_java-7.9.0.tar.gz",
#     ],
#     sha256 = "41131de4417de70b9597e6ebd515168ed0ba843a325dc54a81b92d7af9a7b3ea",
# )
# load("@rules_java//java:repositories.bzl", "rules_java_dependencies", "rules_java_toolchains")
# rules_java_dependencies()
# rules_java_toolchains()


# Golang dependencies ( from https://github.com/bazelbuild/rules_go/releases/tag/v0.49.0 )

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "d93ef02f1e72c82d8bb3d5169519b36167b33cf68c252525e3b9d3d5dd143de7",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.49.0/rules_go-v0.49.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.49.0/rules_go-v0.49.0.zip",
    ],
)

# Gazelle from https://github.com/bazelbuild/bazel-gazelle/releases/tag/v0.38.0)
http_archive(
    name = "bazel_gazelle",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.38.0/bazel-gazelle-v0.38.0.tar.gz"],
    sha256 = "8ad77552825b078a10ad960bec6ef77d2ff8ec70faef2fd038db713f410f5d87",
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")


go_rules_dependencies()
go_register_toolchains(version = "1.22.5")
gazelle_dependencies()

# Proto dependencies
# load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# http_archive(
#     name = "rules_proto",
#     sha256 = "6fb6767d1bef535310547e03247f7518b03487740c11b6c6adb7952033fe1295",
#     strip_prefix = "rules_proto-6.0.2",
#     url = "https://github.com/bazelbuild/rules_proto/releases/download/6.0.2/rules_proto-6.0.2.tar.gz",
# )

# load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")
# rules_proto_dependencies()

# load("@rules_proto//proto:setup.bzl", "rules_proto_setup")
# rules_proto_setup()

# load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")
# rules_proto_toolchains()