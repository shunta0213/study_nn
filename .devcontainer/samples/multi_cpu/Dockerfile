FROM python:3.11-bullseye

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive ;\
  apt-get install -y git wget sudo vim curl

ARG USERNAME=vscode
ARG GROUPNAME=vscode
ARG UID=1000
ARG GID=1000
ARG PASSWORD=pass
RUN groupadd -g $GID $GROUPNAME ;\
  useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME ;\
  echo $USERNAME:$PASSWORD | chpasswd ;\
  echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


USER vscode


# git config
RUN git config --global --add safe.directory /workspaces  ;\
  cp ~/.gitconfig ~/.gitconfig ;\
  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash ;\
  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh ;\
  source ~/.git=completion.bash ;\
  source ~/.git-prompt.sh ;\
  (echo "source ~/.git-completion.bash"; \
  echo "source ~/.git-prompt.sh";\
  echo "GIT_PS1_SHOWDIRTYSTATE=true";\
  echo "GIT_PS1_SHOWUNTRACKEDFILES=true";\
  echo "GIT_PS1_SHOWSTASHSTATE=true";\
  echo "GIT_PS1_SHOWUPSTREAM=auto";\
  echo 'PS1="\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\[\e[33m\]\$(__git_ps1)\[\e[m\]\$ "') >> ~/.bashrc


# install other pkgs
RUN pip3 install --upgrade pip ;\
  pip3 install \
  jupyter \
  matplotlib \
  pandas \
  bs4 \
  lxml \
  selenium \
  'black[jupyter]' \
  pre-commit

# install pytorch
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
