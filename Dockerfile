# use CentOS environment
From centos

# work dir
WORKDIR /zimg/bin
COPY zimg.lua conf/zimg.lua
EXPOSE 4869

# install dependencies
RUN yum install -y git make cmake gcc gcc-c++ autoconf automake libtool nasm
RUN yum install -y openssl-devel cmake libevent-devel libjpeg-devel giflib-devel libpng-devel libwebp-devel ImageMagick-devel libmemcached-devel
RUN git clone https://github.com/buaazp/zimg -b master --depth=1
RUN cd zimg && make

ENTRYPOINT ["./zimg", "conf/zimg.lua"]
