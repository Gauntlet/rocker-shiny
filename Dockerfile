FROM rocker/shiny:latest

# Install packages required by apps.
RUN install2.r shinydashboard ggplot2 RSQLite dplyr pool fuzzyjoin lubridate

EXPOSE 3838
