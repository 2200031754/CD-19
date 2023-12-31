# author
#Sunish Kannembath


FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install pandas
RUN pip3 install influxdb

RUN mkdir -p /python
COPY ./loaddb-fordocker.py /python
COPY ./helper.py /python

CMD ["python3", "/python/loaddb-fordocker.py"]
