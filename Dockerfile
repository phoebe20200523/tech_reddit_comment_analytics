# I didn't use the alphine version since there was no python wheel for Kafka, so I was forced to build it on my own.
# This is obviosly something that I did many times, but it takes time and relevant when used on production.
#https://github.com/confluentinc/confluent-kafka-python/issues/1326
FROM python:3.8.13-slim-bullseye

RUN apt-get update && \
  apt-get install -y --no-install-recommends gcc git libssl-dev g++ make && \
  cd /tmp && git clone https://github.com/edenhill/librdkafka && \
  cd librdkafka && git checkout tags/v2.0.2 && \
  ./configure && make && make install && \
  ldconfig &&\
  cd ../ && rm -rf librdkafka
RUN pip install --upgrade pip
RUN pip install confluent-kafka==2.0.2

# Copy application from local to WORKDIR
# ----------------
ADD . /project
WORKDIR /project

# Install requirements
# ----------------
RUN pip install -r requirements.txt


RUN python -m spacy download en_core_web_sm

# Run Application
# ----------------
EXPOSE 5000
CMD ["python", "/project/application2.py"]
