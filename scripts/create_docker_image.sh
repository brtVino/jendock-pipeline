#!/bin/bash

# This script creates a docker image of the hello world app using a distroless version of c++

bazel run //src:helloworld-cpp_image
