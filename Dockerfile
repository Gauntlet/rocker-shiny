FROM rocker/shiny:latest

# Install packages required by apps.
RUN install2.r shinydashboard ggplot2 RSQLite dplyr pool fuzzyjoin lubridate

EXPOSE 3838

COPY shiny-server.sh /usr/bin/shiny-server.sh

CMD ["/usr/bin/shiny-server.sh"]
