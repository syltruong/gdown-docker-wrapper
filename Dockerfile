FROM python:3.7

RUN pip install gdown==3.12.2

ARG USER
ARG UID
ARG GID

RUN useradd -m ${USER} --uid=${UID}

USER ${UID}:${GID}
WORKDIR /home/${USER}