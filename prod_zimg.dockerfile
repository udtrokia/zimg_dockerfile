# use CentOS environment
# use our dev image
From centos_dev

# RUN git clone https://github.com/buaazp/zimg -b master --depth=1
ADD ./zimg
RUN cd zimg && make

# work dir
COPY /zimg/bin .
RUN rm /zimg
WORKDIR /bin

COPY zimg.lua conf/zimg.lua
EXPOSE 4869

ENTRYPOINT ["./zimg", "conf/zimg.lua"]
