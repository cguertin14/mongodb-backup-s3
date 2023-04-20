FROM arm64v8/mongo

RUN apt-get update && apt install curl unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
		./aws/install && \
		aws --version


ADD run.sh /run.sh
CMD /run.sh
