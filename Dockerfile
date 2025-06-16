FROM amazonlinux:2
RUN yum update -y && yum install -y iproute iputils curl tcpdump wireguard-tools python3 unzip awscli && yum clean all
WORKDIR /app
COPY . .
CMD [ "tail", "-f", "/dev/null" ]
