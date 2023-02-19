# Predicting A Garment Factory's Productivity

Authors: Justin Wong, Longfei Guan, Anirudh Duggal

Adapted with permission from STAT 301 Project by: Justin Wong, Kevin Yu, Zhuoran (Serena) Feng, Fiona Chang

## Summary

The trillion-dollar garment industry is largely fueled by the production and performance of employees that work in manufacturing companies as a labor-intensive, low-skilled industry. As the industry is driven by ever-changing consumer demands and fashion trends, the need for manual processes is inevitable.

Through statistical inference, we seek to dig deeper into the relationship between important attributes of the garment manufacturing process and its employees’ productivity in the following question: **What factors affect the productivity of a garment factory?**

To answer this question, we performed data analysis to search for the most optimized model. Using forward selection and LASSO, we compare different models and determine which factors are the best in explaining relationships between the factors and the actual productivity of the garment factory. Both of the models produced a fairly poor adjusted 𝑅<sup>2</sup> values of 0.17 and 0.169 when testing the model with the testing data. Additionally, neither of the selected models were significantly better than the full model according to the corresponding F-tests. Lastly, we discuss the implications of our results, the limitations of the project, and propose future questions that can be asked based on our project.

## Running the Analysis
### Using Docker
1. Install [Docker](https://www.docker.com/get-started)
2. Clone the repository
   ```
   git clone https://github.com/jw327/dsci-310-group-01.git
   ```
3. Use the terminal/command line to navigate to the root directory of the project
   ```
   cd dsci-310-group-01
   ```
4. Run the following to set up the environment:
   docker run -p 8888:8888 --rm -v /$(pwd):/home/jovyan/work/project jwong086/dsci-310-group-01
   ```


## Viewing the Analysis
The corresponding analysis file is found [here](https://github.com/jw327/dsci-310-group-01/blob/add-data-and-analysis-files/garments_factory_analysis.ipynb).

## Dependencies
Using R version 4.2.2

### R libraries (via. `conda-forge`)
- `r-tidyverse=1.3.2`
- `r-broom=1.0.3`
- `r-ggally=2.1.2`
- `r-leaps=3.1`
- `r-faraway=1.0.8`
- `r-glmnet=4.1-6`

## License 
Licensed under the MIT License and

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a><br />
<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a><br />


## Permission From Past Teammates
Permission from past teammates was obtained. Additional evidence available on request.