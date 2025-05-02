FROM continuumio/miniconda3

COPY ./install/docker_conda_install.sh /app/install/
WORKDIR /app/install/

RUN conda create -n env python=3.6
RUN echo "source activate env" > ~/.bashrc
ENV PATH=/opt/conda/envs/env/bin:$PATH

RUN ./docker_conda_install.sh

COPY . /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libqt5x11extras5 \
    libxkbcommon-x11-0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-randr0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    x11-utils \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
