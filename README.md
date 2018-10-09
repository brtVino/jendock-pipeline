# HELLOWORLD-CPP

## Description:
 Test Repo for a hello world program in cpp. Contains Source code and Unit test using gtest as well as shell scripts to perform these functions.

## Build Code:
The shell script "compile.sh" will use bazel to build the code and is located in the Top Level folder.  In order to use this script bazel must be installed on your system

- Install bazel: https://docs.bazel.build/versions/master/install.html

Once bazel is installed run the following script
```
./compile.sh
```

## Test Code:
The shell script "run_tests.sh" will use bazel to run the unit test for the code and is located in the Top Level folder.  The gtest unit testing framework is used.  In order to use this script bazel must be installed on your system __**See Above URL**__

To run unit test run the following script
```
./run_tests.sh
```
##Create Docker Image
The shell script "create_docker_image.sh" will use bazel to create a distorless c++ version docker image of the hello world app.

To create a docker image of the app run the following script
```
./create_docker_image.sh
```

##Push and Pull Docker Container
A shell script has been provided to pull a docker container form the centralized brt docker registry.  The current registry address in use is system-services.bluerivertech.com/brtdockerrepo/.  Docker must be installed in order for this script to work.  You also will need to access to the docker registry and vpn support.  The following link has instructions to complete these docker set-up task:

https://bluerivertechnology.atlassian.net/wiki/spaces/SHASTA/pages/519274512/How+to+access+the+docker+registry

Once docker is set up and you have registry acces, you will also need install the following library to allow bazel to push and pull to the registry.
```
sudo pip install httplib2.system-ca-certs-locator
```

Once the library is installed The push and pull scripts can be used.

To push the hello world docker image to the central registry run the following script:
```
./push_docker_image.sh
```

To pull a docker image from the central registry run the following script passing the docker image and tag as arguemnts:
```
./pull_docker_image.sh <image> <tag>
```
- example:
```
./pull_docker_image.sh helloworld-cpp v0.0.1
```

# Development tools
## Buildifier
Buildifier formats Skylark code.  To run buildifier and beautify all BUILD, WORKSPACE, bzl, etc. files in this repository, run
`bazel run //:buildifier`
This is recommended whenever changes to these files are made.
