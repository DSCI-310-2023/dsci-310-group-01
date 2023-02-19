FROM jupyter/r-notebook

RUN Rscript -e "install.packages('remotes', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('tidyverse', '1.3.2')"
RUN Rscript -e "remotes::install_version('broom', '1.0.3')"
RUN Rscript -e "remotes::install_version('ggally', '2.1.2')"
RUN Rscript -e "remotes::install_version('leaps', '3.1')"
RUN Rscript -e "remotes::install_version('faraway', '1.0.8')"
RUN Rscript -e "remotes::install_version('glmnet', 'glmnet')"
