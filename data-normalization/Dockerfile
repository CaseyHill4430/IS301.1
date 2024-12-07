FROM ubuntu:latest
WORKDIR /data-normalization
COPY normalized_data.sh ./normalized_data.sh
COPY mdpiPubs.txt ./mdpiPubs.txt
RUN chmod +x ./normalized_data.sh
CMD ["/bin/bash", "-c", "./normalized_data.sh"]
