FROM jupyter/scipy-notebook

# Add ssh-client, vim, htop and tmux
USER root
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
     htop \
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

# Add tweak ipython default config
COPY --chown=$NB_UID:$NB_GID ./ipython_config.py /home/jovyan/.ipython/profile_default/

# Install support for spellchecking
RUN jupyter labextension install @ijmbarr/jupyterlab_spellchecker

# Add SQL extension
RUN pip install jupyterlab_sql && \
  jupyter serverextension enable jupyterlab_sql --py --sys-prefix && \
  jupyter lab build

# Add git extension
RUN jupyter labextension install @jupyterlab/git && \
  pip install --upgrade jupyterlab-git && \
  jupyter serverextension enable --py jupyterlab_git
  
# Add black formatter extension
RUN jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user && \
  jupyter nbextension enable jupyter-black-master/jupyter-black

# Add script to execute long-running notebooks
COPY ./run_notebook_background.sh /usr/local/bin/
