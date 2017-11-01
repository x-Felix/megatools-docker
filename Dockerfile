FROM debian:latest
LABEL maintainer="florid2"

RUN echo "deb http://http.us.debian.org/debian unstable main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://http.us.debian.org/debian unstable main non-free contrib" >> /etc/apt/sources.list

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y \
    megatools \
    wget \
    curl && \
    apt-get clean && \
    apt-get purge && \
rm -rf /tmp/*