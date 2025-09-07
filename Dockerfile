
FROM ubuntu:latest

RUN apt-get update -y && \
        apt-get install -y curl unzip jq && \
        apt-get clean && apt-get autoclean && apt-get autoremove && \
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
        unzip awscliv2.zip && \
        cd aws && \
        ./install -u -i /usr/local/aws-cli -b /usr/local/bin

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
