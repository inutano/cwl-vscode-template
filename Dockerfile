FROM perl:5.30.1-slim-buster
ENV VERSION="v14"
RUN apt-get update -y && apt-get install -y wget && \
  wget "http://www.bork.embl.de/pal2nal/distribution/pal2nal.${VERSION}.tar.gz" && \
  tar xf "pal2nal.${VERSION}.tar.gz" && \
  mv pal2nal.${VERSION}/pal2nal.pl /usr/bin && \
  chmod +x /usr/bin/pal2nal.pl
CMD ["pal2nal.pl"]
  
