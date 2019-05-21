FROM nssmmn/r-base:v0.2.1

LABEL maintainer="Nassim Kaddour <nssmmn@gmail.com>"
LABEL version="0.3.0"

RUN apt-get update

RUN install2.r data.table
RUN install2.r readxl
RUN install2.r tidyverse

CMD R
