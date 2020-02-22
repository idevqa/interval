FROM python:3.7-slim

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
RUN pwd
RUN echo "hello flow"
RUN pwd

ENTRYPOINT ["/entrypoint.sh"]
