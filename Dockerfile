FROM  banesullivan/transform-21:latest
MAINTAINER Bane Sullivan "bane.sullivan@kitware.com"
SHELL ["/bin/bash", "-c"]

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

WORKDIR $HOME

COPY start.sh /sbin/start_xvfb.sh
RUN chmod a+x /sbin/start_xvfb.sh

ENTRYPOINT ["tini", "-g", "--", "start_xvfb.sh"]
CMD ["/bin/bash"]
# CMD ["jupyter", "notebook", "--port=8878", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
