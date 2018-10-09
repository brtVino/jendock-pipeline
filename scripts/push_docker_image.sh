#!/bin/bash

# This script uses bazel to push the hello world docker image to the central brtdockerrop

bazel run //src:push_helloworld


