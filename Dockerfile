FROM rodolpheche/wiremock
RUN apt-get update && apt-get install -y vim
COPY mappings /home/wiremock/mappings
