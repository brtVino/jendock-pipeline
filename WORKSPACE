# Google Test

new_http_archive(
    name = "gtest",
    build_file = "BUILD.gtest",
    sha256 = "f3ed3b58511efd272eb074a3a6d6fb79d7c2e6a0e374323d1e6bcbcc1ef141bf",
    strip_prefix = "googletest-release-1.8.0",
    url = "https://github.com/google/googletest/archive/release-1.8.0.zip",
)

# Docker rules

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "29d109605e0d6f9c892584f07275b8c9260803bf0c6fcb7de2623b2bedc910bd",
    strip_prefix = "rules_docker-0.5.1",
    urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.5.1.tar.gz"],
)

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)
load("@io_bazel_rules_docker//cc:cc.bzl", "DIGESTS")

container_repositories()

load(
    "@io_bazel_rules_docker//cc:image.bzl",
    _cc_image_repos = "repositories",
)

_cc_image_repos()

container_pull(
    name = "cc_image_base",
    digest = DIGESTS["latest"],
    registry = "gcr.io",
    repository = "distroless/cc",
)

# example to pull docker images with bazel
container_pull(
    name = "pull_helloworld",
    registry = "system-services.bluerivertech.com:16000",
    repository = "brtdockerrepo/helloworld-cpp",
    tag = "v0.0.1",
)

# Go (needed for bazel buildtools)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "97cf62bdef33519412167fd1e4b0810a318a7c234f5f8dc4f53e2da86241c492",
    url = "https://github.com/bazelbuild/rules_go/releases/download/0.15.3/rules_go-0.15.3.tar.gz",
)

load("@io_bazel_rules_go//go:def.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

# Bazel buildtools

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "62afb69f40946342804776f96e00236e98ed43e12c0ffdbc44b1ce0a759915fb",
    strip_prefix = "buildtools-0.15.0",
    url = "https://github.com/bazelbuild/buildtools/archive/0.15.0.tar.gz",
)

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()
