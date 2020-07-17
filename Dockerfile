# Docker file
FROM centos:7

RUN yum -y update
RUN yum -y install https://repo.ius.io/ius-release-el7.rpm
RUN yum search python36
RUN yum -y install python36u python36u-libs python36u-devel python36u-pip
RUN ln -s /usr/bin/pip3.6 /usr/local/bin/pip
RUN yum -y install postgresql-devel
RUN yum -y install python-psycopg2
RUN pip install psycopg2-binary
RUN yum -y install gcc
RUN pip install psycopg2
RUN yum -y install git
RUN git clone https://github.com/saisho0206/qiita-tuto.git

WORKDIR /root
CMD["/bin/bash"]
