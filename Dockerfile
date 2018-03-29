# use CentOS environment
From centos

# install dependencies
RUN yum install -y git make cmake gcc gcc-c++ autoconf automake libtool nasm openssl-devel cmake libevent-devel libjpeg-devel giflib-devel libpng-devel libwebp-devel ImageMagick-devel libmemcached-devel

#RUN git clone https://github.com/buaazp/zimg -b master --depth=1
ADD ./zimg
RUN cd zimg && make && rm /zimg

# work dir
COPY /zimg/bin .
WORKDIR /bin

COPY zimg.lua conf/zimg.lua
EXPOSE 4869

ENTRYPOINT ["./zimg", "conf/zimg.lua"]
