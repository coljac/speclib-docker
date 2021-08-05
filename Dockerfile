FROM ubuntu:20.04

ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update 
RUN apt-get install -y git build-essential cmake
RUN git clone https://github.com/cschreib/speclib.git
RUN cd speclib && cmake .
RUN cd speclib && make -j
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
