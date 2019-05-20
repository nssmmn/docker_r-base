FROM rocker/r-base:latest

LABEL maintainer="Nassim Kaddour <nssmmn@gmail.com>"
LABEL version="0.2.1"

RUN apt-get update

RUN apt-get install -y\
	libssl-dev \
	libsasl2-dev \
	libcurl4-gnutls-dev \
	libxml2-dev \
	libudunits2-dev \
	libgdal-dev \
	librsvg2-dev \
	pdftk

RUN install2.r dplyr
RUN install2.r stringr
RUN install2.r lubridate
RUN install2.r tibble
RUN install2.r ggplot2
RUN install2.r viridis
RUN install2.r xml2
RUN install2.r extrafont
RUN install2.r rsvg
RUN install2.r svglite
RUN install2.r staplr
RUN install2.r plumber
RUN install2.r readr
RUN install2.r purrr
RUN install2.r curl
RUN install2.r RCurl
RUN install2.r mongolite
RUN install2.r sf
RUN install2.r modules

CMD R
