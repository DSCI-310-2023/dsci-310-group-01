FROM jupyter/r-notebook

RUN Rscript -e "install.packages('tidyverse', version ='1.3.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('broom', version ='1.0.3', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('GGally', version ='2.1.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('leaps', version ='3.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('faraway', version ='1.0.8', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('glmnet', version ='4.1-6', repos = 'http://cran.us.r-project.org')"
