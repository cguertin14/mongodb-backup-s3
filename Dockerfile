FROM mongo:7.0.4

RUN apt-get update && apt install curl unzip ca-certificates -y
RUN update-ca-certificates --fresh
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
		./aws/install && \
		aws --version

ADD run.sh /run.sh
CMD /run.sh
