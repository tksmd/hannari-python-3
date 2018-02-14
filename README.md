# Hannari Python #3 Demonstration

This project includes demonstration code for the presentation at [Hannari Python #3](https://hannari-python.connpass.com/event/77366/) at Feb 16th 2018.

## Prerequisites

* Docker

## Start Jupyter

Build docker image as follows. Don't forget the last `.` (dot). This is required only once.

    docker build -t hannari-python-3 .

Then run jupyter notebook like this

    docker run --rm -p 8888:8888 -v $(pwd):/opt/local/work hannari-python-3

To debug docker environment, run bash as follows.

    docker run --rm -ti hannari-python-3 /bin/bash -l

# References

* [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks/)
