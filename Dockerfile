FROM centos:7

RUN yum install -y gcc; yum clean all

WORKDIR /usr/src

COPY hello.c .

RUN gcc -o /usr/bin/hello hello.c 

CMD [ "/usr/bin/hello" ]
