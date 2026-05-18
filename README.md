# Statistical Hypothesis Testing and Distribution Fitting in R

An end-to-end statistical analysis project using R, covering data 
generation, normality assessment, hypothesis testing, and distribution 
fitting on simulated biomedical weight data.

---

## Project Overview

This project investigates whether a simulated treatment has a 
statistically significant effect on the body weights of mice and rats. 
Two datasets with different distributional properties are analysed, 
requiring different hypothesis testing approaches — demonstrating 
understanding of when parametric and non-parametric tests are appropriate.

---

## Project Structure

The analysis is divided into four tasks:

**Task 1 — Data Generation**
- 200 observations generated for mice weights (before/after treatment) 
  using a Normal distribution
- 200 observations generated for rats weights (before/after treatment) 
  using a Weibull distribution
- Density plots and boxplots produced to compare distributions visually

**Task 2 — Normality Assessment**
- QQ plots produced for both datasets
- Shapiro-Wilk normality test applied to determine distributional 
  properties
- Mice data confirmed as approximately normal; rats data confirmed as 
  non-normal, informing the choice of test in Task 3

**Task 3 — Hypothesis Testing**
- Paired t-test applied to mice dataset (parametric, normality confirmed)
- Wilcoxon signed-rank test applied to rats dataset (non-parametric, 
  normality violated)

**Task 4 — Distribution Fitting**
- Weibull, Lognormal, and Gamma distributions fitted to the rats dataset
  using the fitdistrplus package
- Model fit assessed using summary statistics and diagnostic plots

---

## Technologies Used

- R
- ggplot2 — density plots and boxplots
- fitdistrplus — distribution fitting
- Base R — qqnorm, shapiro.test, t.test, wilcox.test

---

## Key Findings

- The mice weight dataset follows a Normal distribution (Shapiro-Wilk 
  p > 0.05), making a paired t-test appropriate
- The rats weight dataset is non-normal (Shapiro-Wilk p < 0.05), 
  requiring the non-parametric Wilcoxon test
- Multiple distributions (Weibull, Lognormal, Gamma) were fitted to 
  the rats data to identify the best statistical model

---

## How to Run

1. Clone the repository
```bash
   git clone https://github.com/nasif2004/statistical-hypothesis-testing-r
```

2. Open R or RStudio and install required packages
```r
   install.packages(c("ggplot2", "fitdistrplus"))
```

3. Run the script
```r
   source("Hypothesis_testing.R")
```

---

## Author

**Muhammad Nasif**  
BSc (Hons) Computer Science with Artificial Intelligence  
University of Greenwich  
[LinkedIn](https://linkedin.com/in/muhammad-nasif) | [GitHub](https://github.com/nasif2004)
