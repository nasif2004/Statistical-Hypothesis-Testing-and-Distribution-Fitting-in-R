#Task 1: Data Generation
# Load necessary libraries
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Task 1a: Generate data for mice weights before and after treatment
mice_before <- rnorm(200, mean = 20, sd = sqrt(2))
mice_after <- rnorm(200, mean = 21, sd = sqrt(2.5))

# Task 1b: Generate data for rats weights before and after treatment
rats_before <- rweibull(200, shape = 10, scale = 20)
rats_after <- rweibull(200, shape = 9, scale = 21)

# Task 1c: Compare density plots for mice and rats data sets
qplot(mice_before, geom = "density", main = "Mice Weight (Before Treatment)") +
  geom_density(aes(x = mice_after, color = "After"), alpha = 0.5) +
  theme_minimal()

qplot(rats_before, geom = "density", main = "Rats Weight (Before Treatment)") +
  geom_density(aes(x = rats_after, color = "After"), alpha = 0.5) +
  theme_minimal()

# Task 1d: Compare boxplots for mice and rats data sets
qplot(factor(rep(c("Before", "After"), each = 200)), c(mice_before, mice_after), geom = "boxplot", main = "Mice Weight") +
  theme_minimal()

qplot(factor(rep(c("Before", "After"), each = 200)), c(rats_before, rats_after), geom = "boxplot", main = "Rats Weight") +
  theme_minimal()

#Task 2: Appropriateness for Hypothesis t-testing
# Task 2a: Check normality for mice data set
qqnorm(c(mice_before, mice_after))
qqline(c(mice_before, mice_after))

shapiro.test(c(mice_before, mice_after))

# Task 2b: Check normality for rats data set
qqnorm(c(rats_before, rats_after))
qqline(c(rats_before, rats_after))

shapiro.test(c(rats_before, rats_after))

# Task 2c: Explanation and discussion
# Based on the QQ plots and Shapiro-Wilk tests, we observe that the mice data set appears to be approximately normally distributed, as the QQ 
#plot shows a relatively straight line and the p-value of the Shapiro-Wilk test is greater than 0.05. Therefore, a paired t-test is appropriate for hypothesis testing.
# However, for the rats data set, the QQ plot shows deviation from normality, and the Shapiro-Wilk test also yields a p-value less than 0.05, indicating non-normality. Thus, a non-parametric test would be more suitable for hypothesis testing.


#Task 3: Hypothesis Testing
# Task 3a: Paired t-test for mice dataset
t_test_mice <- t.test(mice_before, mice_after, paired = TRUE)
t_test_mice

# Task 3b: Non-parametric test for rats dataset
wilcox.test(rats_before, rats_after)

# Load necessary library
library(fitdistrplus)

# Task 4: Fitting distributions for rats dataset
rats_data <- c(rats_before, rats_after)

# Fit Weibull distribution
weibull_fit <- fitdist(rats_data, "weibull")
summary(weibull_fit)
plot(weibull_fit)

# Fit lognormal distribution
lognormal_fit <- fitdist(rats_data, "lnorm")
summary(lognormal_fit)
plot(lognormal_fit)

# Fit Gamma distribution
gamma_fit <- fitdist(rats_data, "gamma")
summary(gamma_fit)
plot(gamma_fit)

