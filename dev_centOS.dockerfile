# use CentOS environment
From centos

# install dependencies
RUN yum install -y git make cmake gcc gcc-c++ autoconf automake libtool nasm
RUN yum install -y openssl-devel cmake libevent-devel libjpeg-devel giflib-devel libpng-devel libwebp-devel ImageMagick-devel libmemcached-devel

CMD ["/bin/bash"]
