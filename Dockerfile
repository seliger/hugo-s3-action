FROM amazon/aws-cli

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
