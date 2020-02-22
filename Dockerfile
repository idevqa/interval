FROM python:3.7-slim


RUN sudo apt-get install hugo
RUN echo "hello flow"
RUN rake ready sys='ubuntu'
RUN rake

# ENTRYPOINT ["/entrypoint.sh"]
