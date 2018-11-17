FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -qq -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update -qq && \
    apt-get install -qq -y ethereum wget git zsh iputils-ping && \
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true


ENV APP /home/geth-user
RUN mkdir -p $APP
WORKDIR $APP

RUN echo "echo -------------------------------------------------" >> ~/.zshrc && \
    gv="$(dpkg -s geth | grep 'ersion:')" && echo "echo Geth $gv" >> ~/.zshrc && \
    echo "echo -------------------------------------------------" >> ~/.zshrc

ENV SHELL /usr/bin/zsh
CMD ["zsh"]
