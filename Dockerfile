FROM rocker/r-ver:4.3.1

#Set working directory inside the container
WORKDIR /project

#Copy project files into the container
COPY . /project

#Install system libraries needed for common R packages and rmarkdown
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    pandoc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#Restore R packages using renv
RUN R -e "install.packages('renv'); renv::restore()"

#Render the report when the container runs
CMD ["Rscript", "code/03_render_report.R"]
