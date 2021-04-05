FROM python:3.7

WORKDIR /home
RUN apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && npm install -g pyright@1.1.128
RUN pip install tensorflow==2.4.1
RUN pyright --createstub tensorflow
COPY keras_weirdness.py /home