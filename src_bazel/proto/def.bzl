load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")
load("@rules_proto//proto:setup.bzl", "rules_proto_setup")
load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")


def proto_rules_deps():
    rules_proto_dependencies()
    rules_proto_setup()
    rules_proto_toolchains()
