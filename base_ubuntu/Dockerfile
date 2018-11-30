FROM ubuntu:18.10 
LABEL version="1.0.0" description="ubuntu 18.10" maintainer="josuehennemann <josuehennemann@gmail.com>"
RUN mkdir -p /home/go/src && mkdir -p /home/go/bin && mkdir -p /home/gopack/src/  && mkdir -p /home/workspace/
VOLUME /home/go/src /home/gopack/src/ /home/workspace/
RUN apt-get update -y && apt-get install wget -y && wget https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz
RUN tar -C /usr/local -xzf go1.4-bootstrap-20171003.tar.gz && rm go1.4-bootstrap-20171003.tar.gz
RUN apt-get install gcc git -y
RUN cd /usr/local/go/src/ && ./make.bash && ln -s /usr/local/go/ /root/go1.4

COPY VERSION /home/go/
RUN mkdir -p /home/go/.git
COPY .git /home/go/.git
ENV GOPATH=/home/gopack/
ENV GOROOT=/home/go
ENV PATH=$PATH:/home/workspace/Docker/scripts
ENV BINNAME=ubuntu18

CMD ["internalStartContainer.sh", "bash"]