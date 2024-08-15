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
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_proto",
    sha256 = "6fb6767d1bef535310547e03247f7518b03487740c11b6c6adb7952033fe1295",
    strip_prefix = "rules_proto-6.0.2",
    url = "https://github.com/bazelbuild/rules_proto/releases/download/6.0.2/rules_proto-6.0.2.tar.gz",
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")
rules_proto_dependencies()

load("@rules_proto//proto:setup.bzl", "rules_proto_setup")
rules_proto_setup()

load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")
rules_proto_toolchains()

# Ensure the go_proto_library rule can find protoc-gen-go
# load("@io_bazel_rules_go//proto:def.bzl", "go_proto_compiler")

# go_proto_compiler(
#     name = "go_proto_compiler",
#     visibility = ["//visibility:public"],
# )


# Protobuf and gRPC Go plugin
# http_archive(
#     name = "com_github_protocolbuffers_protobuf",
#     urls = ["https://github.com/protocolbuffers/protobuf/releases/download/v21.3/protobuf-java-3.21.3.tar.gz"],
#     strip_prefix = "protobuf-3.21.3",
#     sha256 = "8aefa24f1c5d0e8a43b6c4f08eb10543d4a6c6a5d171d9dc7314fba30e2247b3",
# )

# http_archive(
#     name = "com_github_golang_protobuf",
#     urls = ["https://github.com/protocolbuffers/protobuf-go/archive/v1.28.0.tar.gz"],
#     strip_prefix = "protobuf-go-1.28.0",
#     sha256 = "8c902f83d54a2172bdb1a72b6b1cf224c26f0fa1c9607328f67b34f6b43a21a6",
# )

# load("@com_github_golang_protobuf//:protoc-gen-go.bzl", "go_proto_toolchain")

# go_proto_toolchain()