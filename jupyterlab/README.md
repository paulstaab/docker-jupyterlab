Jupyter Lab
===========

Image: **paulstaab/jupyterlab**

This image is based on the [official Jupyter images](https://github.com/jupyter/docker-stacks)
and includes some small extensions. I use it for data analysis and experiments with
Python.

Extensions
----------
+ **pythonloc kernel**: I use [pythonloc](https://pypi.org/project/pythonloc) to automatically
  manage project dependencies in a reproducible way. TLDR: When using this kernel, install packages
  using the `piploc` command instead of `pip`. The packages will be use for all notebook in the
  current folder, and only for them.

Usage
-----
Use this container as you would [use the official Jupyter images](https://jupyter-docker-stacks.readthedocs.io/en/latest/).
