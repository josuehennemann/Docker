FROM centos:7
LABEL version="1.0.0" description="centos 7" maintainer="Josué Hennemann <josuehennemann@gmail.com>"
#cria os diretorios que vao ser utilizados
RUN mkdir -p /home/go/src && mkdir -p /home/go/bin && mkdir -p /home/gopack/src/  && mkdir -p /home/workspace/
#define o local onde os volumes vao ser montados
VOLUME /home/go/src /home/gopack/src/ /home/workspace/

#instala a versao 1.4 do Go para poder compilar as versoes mais recentes
RUN yum update -y && yum install wget gcc git -y
RUN wget https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz && tar -C /usr/local -xzf go1.4-bootstrap-20171003.tar.gz && rm go1.4-bootstrap-20171003.tar.gz
RUN cd /usr/local/go/src/ && ./make.bash && ln -s /usr/local/go/ /root/go1.4

#copia os arquivos basicos do Go para poder compilar a versao mais atual dele
COPY VERSION /home/go/
RUN mkdir -p /home/go/.git
COPY .git /home/go/.git

#define variaveis de ambiente 
ENV GOPATH=/home/gopack/
ENV GOROOT=/home/go
ENV PATH=$PATH:/home/workspace/Docker/scripts
ENV BINNAME=centos7

#executa o comando que compila o go dentro do container
CMD ["internalStartContainer.sh", "bash"]