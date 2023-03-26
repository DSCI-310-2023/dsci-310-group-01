# Makefile
# Group 1, March 25
#
# This script completes the whole analysis of the project including
# loading/transforming the data, creating plots, selecting and testing
# a model as well as rendering the final report. This script takes no
# arguments.
#
# Usage:
# - to run entire analysis: make all
# - to clean the entire analysis: make clean

all: notebooks/garments_factory_analysis.html

load: 
# loading the data
data/garments_worker_productivity.csv : src/R/01-save_data.R
		Rscript src/R/01-save_data.R --url="https://7e6cd356-86ad-4874-abc7-3a69bbbc39e6.filesusr.com/ugd/c5a545_c1b17c070c984dfcb14cf1c3bb0b6e67.csv?dn=garments_worker_productivity.csv" --out_dir="data"
		
# tidying the data
data/cleaned_data.csv : data/garments_worker_productivity.csv src/R/02-clean_data.R
		Rscript src/R/02-clean_data.R --input="data/garments_worker_productivity.csv" --out_dir="data"

# EDA 
results/pair_plots.png : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

results/day_boxplot.png : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

results/department_boxplot.png : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

results/actual_productivity_distribution.png : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

results/actual_productivity_qqplot.png : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

results/summary_table_1.csv : data/cleaned_data.csv src/R/03-EDA_figures.R
		Rscript src/R/03-EDA_figures.R --input="data/filtered_data.csv" --out_dir="results"

# data pre-processing: split into training and testing sets
data/train_data.csv : data/cleaned_data.csv src/R/04-train_test_split.R
		Rscript src/R/04-train_test_split.R --input="data/filtered_data.csv" --out_dir="results"

data/test_data.csv : data/cleaned_data.csv src/R/04-train_test_split.R
		Rscript src/R/04-train_test_split.R --input="data/filtered_data.csv" --out_dir="results"