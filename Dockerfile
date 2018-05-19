FROM python:3.6
ENV PYTHONUNBUFFERED=1
RUN mkdir /HttpRunnerManager
WORKDIR /HttpRunnerManager
ADD requirements.txt /HttpRunnerManager/
RUN pip install -r requirements.txt
