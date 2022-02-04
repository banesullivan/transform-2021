FROM ghcr.io/pyvista/pyvista:latest
MAINTAINER Bane Sullivan "@banesullivan"
SHELL ["/bin/bash", "-c"]

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

WORKDIR $HOME

COPY basic-notebooks/ $HOME/basic-notebooks
COPY geo-notebooks/ $HOME/geo-notebooks
