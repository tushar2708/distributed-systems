workspace(name = "distributed_systems")


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Go build dependencies
load("//src_bazel/go:repos.bzl", "add_go_repos")
add_go_repos()
load("//src_bazel/go:def.bzl", "add_go_rules_deps")
add_go_rules_deps()


# Proto build dependencies



load("//src_bazel/proto:repos.bzl", "add_proto_repos")
add_proto_repos()

# load("//src_bazel/proto:def.bzl", "proto_rules_deps")
# proto_rules_deps()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")
rules_proto_dependencies()

load("@rules_proto//proto:setup.bzl", "rules_proto_setup")
rules_proto_setup()

load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")
rules_proto_toolchains()
