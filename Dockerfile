FROM dockerfile/java:oracle-java7
MAINTAINER Mark Smithson mark@digital-morphosis.com
RUN apt-get update
RUN apt-get upgrade -y
ENV REFRESHED_AT 2014-10-21

RUN apt-get install -y python-pip unzip
RUN pip install awscli

CMD ["bash"]
