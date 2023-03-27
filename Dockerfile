FROM rocker/rstudio:4.1.3 

# Update ubuntu and install tidyverse system dependencies
RUN apt update -y
RUN apt install -y libcurl4-openssl-dev libssl-dev libxml2-dev zlib1g-dev

# Install R packages 
RUN Rscript -e "install.packages('tidyverse', version ='1.3.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('broom', version ='1.0.3', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('GGally', version ='2.1.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('leaps', version ='3.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('glmnet', version ='4.1-6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('testthat', version ='3.1.6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('bookdown', version ='0.33', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('docopt', version ='0.7.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('here', version ='1.0.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('ggplotify', version ='0.1.0', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('rmarkdown', version ='2.13', repos = 'http://cran.us.r-project.org')"