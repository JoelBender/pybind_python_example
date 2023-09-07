# pybind_python_example

This is a fork of the [python_example](https://github.com/pybind/python_example)
project.  It includes scripts to use [Docker](https://www.docker.com/) for building
the extension and extracting the resulting wheel which can then be installed in
other docker images that are built from [python:3.10](https://hub.docker.com/_/python).

## example-build.sh

This is a combination of a `docker build` which runs through the build process
to create the wheel, the a `docker run` which copies the wheel into the `export/`
directory.

## example-app-build.sh

A simple `docker build` command to create the `example-app` image.

The Dockerfile assumes that the wheel to be installed is in the `export/`
directory created in the previous step.

## example-app-run.sh

A simple `docker run` command to run an application built in the previous step.
