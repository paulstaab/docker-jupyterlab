FROM jupyter/scipy-notebook

# Add kernel with pythonloc
RUN pip install pythonloc
COPY ./pythonloc /opt/conda/share/jupyter/kernels/pythonloc/

# Install support for spellchecking
jupyter labextension install @ijmbarr/jupyterlab_spellchecker
