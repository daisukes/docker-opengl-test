ARG FROM_IMAGE=nvidia/opengl:1.1-glvnd-runtime-ubuntu16.04

FROM $FROM_IMAGE

RUN apt update && apt-get install -y mesa-utils x11-apps


ENV USERNAME developer

# Replace 1000 with your user/group id
ARG UID=1002
RUN useradd -m $USERNAME && \
        echo "$USERNAME:$USERNAME" | chpasswd && \
        usermod --shell /bin/bash $USERNAME && \
	usermod -aG sudo $USERNAME && \
        mkdir -p /etc/sudoers.d/ && \
        echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
        chmod 0440 /etc/sudoers.d/$USERNAME && \
        usermod  --uid $UID $USERNAME && \
        groupmod --gid $UID $USERNAME

USER $USERNAME

ENV HOME /home/$USERNAME

CMD [ "glxgears" ]
