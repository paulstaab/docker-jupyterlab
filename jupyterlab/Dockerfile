FROM jupyter/scipy-notebook

# Add ssh-client, vim and tmux
USER root
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
     openssh-client \
     vim \
     tmux && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/ && \
  rm -rf /tmp/downloaded_packages/ /tmp/*.rds 
USER $NB_UID

# Add kernel with pythonloc
RUN pip install pythonloc
COPY ./pythonloc /opt/conda/share/jupyter/kernels/pythonloc/

# Install support for spellchecking
RUN jupyter labextension install @ijmbarr/jupyterlab_spellchecker

# Add script to execute long-running notebooks
COPY ./run_notebook_background.sh /usr/local/bin/

