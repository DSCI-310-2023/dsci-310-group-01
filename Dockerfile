FROM rocker/rstudio:4.1.3 

RUN Rscript -e "install.packages('tidyverse', version ='1.3.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('broom', version ='1.0.3', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('GGally', version ='2.1.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('leaps', version ='3.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('glmnet', version ='4.1-6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('testthat', version ='3.1.6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('bookdown', version ='0.33', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('docopt', version ='0.7.1', repos = 'http://cran.us.r-project.org')"