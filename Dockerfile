FROM appleboy/drone-lambda:1.2.3-linux-amd64

ADD entrypoint.sh /entrypoint.sh
RUN docker images
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
