#
# Run jupyter notebook under Python 3.6.3, conda 4.3.29
#
# For more details, refer to [minimal-notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).
#
FROM jupyter/minimal-notebook:c54800018c2c
MAINTAINER Takashi Someda <someda@isenshi.com>

USER root
RUN apt-get update && apt-get install fonts-ipaexfont -y
# for opencv
RUN apt-get install libglib2.0-0 libsm-dev libxrender-dev libxext-dev -y

ENV WORK_DIR /opt/local/work
RUN mkdir -p ${WORK_DIR}
RUN chown -R ${NB_USER}. ${WORK_DIR}

USER $NB_USER
WORKDIR ${WORK_DIR}
COPY requirements.lock .
RUN pip install -r requirements.lock
