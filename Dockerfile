FROM mongo:7.0.4

RUN apt-get update && apt install curl unzip ca-certificates awscli -y
RUN update-ca-certificates --fresh

ADD run.sh /run.sh
CMD /run.sh
