FROM debian:8
RUN apt-get update \
    && apt-get install -y git-core python-gdal \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /ogr2osm
RUN git clone https://github.com/pnorman/ogr2osm.git /ogr2osm
RUN cd /ogr2osm && git submodule init && git submodule update
