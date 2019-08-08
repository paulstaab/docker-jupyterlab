[![Build Status](https://travis-ci.org/paulstaab/docker-jupyterlab.svg?branch=master)](https://travis-ci.org/paulstaab/docker-jupyterlab)

Extendend Jupyter Lab Image
===========================

Image: [**paulstaab/jupyterlab**](https://hub.docker.com/r/paulstaab/jupyterlab)

This image is based on the [official Jupyter images](https://github.com/jupyter/docker-stacks)
and includes some small extensions. I use it for data analysis and experiments with
Python.

Extensions
----------
+ **pythonloc kernel**: I use [pythonloc](https://pypi.org/project/pythonloc) to automatically
  manage project dependencies in a reproducible way. TLDR: When using this kernel, install packages
  using the `piploc` command instead of `pip`. The packages will be use for all notebook in the
  current folder, and only for them.
+ [**spellcheck extension**](https://github.com/ijmbarr/jupyterlab_spellchecker): Extension for spell checking in notebooks.
+ **run_notebook_background.sh**: Script to execute longrunning notebooks from terminal without 
  a client having a constant connection to the jupyter lab web-UI.
+ [**git extension**](https://github.com/jupyterlab/jupyterlab-git): Extension for using git from the UI
+ [**sql extension**](https://github.com/pbugnion/jupyterlab-sql): Extension for interacting with relational DMBS
+ [**black extension**](https://github.com/drillan/jupyter-black): Support for black formatter

Usage
-----
Use this container as you would [use the official Jupyter images](https://jupyter-docker-stacks.readthedocs.io/en/latest/).
