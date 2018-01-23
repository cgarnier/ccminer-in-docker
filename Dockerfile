FROM nvidia/cuda:9.0-devel

RUN groupadd -g 2000 miner && \
    useradd -u 2000 -g miner -m -s /bin/bash miner && \
    echo 'miner:miner' | chpasswd
RUN apt-get -y update
RUN apt-get -y install git automake libssl-dev libcurl4-openssl-dev

USER miner
RUN cd && git clone https://github.com/todd1251/ccminer-x16r.git ccminer
RUN cd ~/ccminer && ./autogen.sh && ./configure --with-cuda=/usr/local/cuda && make -j4
ENTRYPOINT ["/home/miner/ccminer/ccminer"]

