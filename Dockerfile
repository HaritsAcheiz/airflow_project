FROM apache/airflow:slim-latest-python3.11

USER root

RUN apt update\
  && apt-get -y install libpq-dev gcc

WORKDIR /home/harits/Project/airflow_project

COPY requirements.txt ./

USER airflow

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .
