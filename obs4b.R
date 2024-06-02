#t-test
# Create two sample data vectors
group1 <- c(25, 30, 35, 40, 45)    # Sample data for group 1
group2 <- c(20, 25, 30, 35, 40)    # Sample data for group 2

# Independent two-sample t-test
ind_ttest <- t.test(group1, group2)
print("Independent two-sample t-test:")
print(ind_ttest)

# Paired t-test
paired_ttest <- t.test(group1, group2, paired = TRUE)
print("Paired t-test:")
print(paired_ttest)

# One-sample t-test
one_sample_ttest <- t.test(group1, mu = 30)
print("One-sample t-test:")
print(one_sample_ttest)


#z-test
# Load the required library
library(stats)

# Create two sample data vectors
group1 <- c(25, 30, 35, 40, 45)    # Sample data for group 1
group2 <- c(20, 25, 30, 35, 40)    # Sample data for group 2

# One-sample z-test
one_sample_ztest <- z.test(group1, mu = 30)
print("One-sample z-test:")
print(one_sample_ztest)

# Two-sample z-test (with known variances)
two_sample_known_ztest <- z.test(group1, group2, alternative = "two.sided", var.equal = TRUE)
print("Two-sample z-test (with known variances):")
print(two_sample_known_ztest)

# Two-sample z-test (with unknown variances)
two_sample_unknown_ztest <- z.test(group1, group2, alternative = "two.sided", var.equal = FALSE)
print("Two-sample z-test (with unknown variances):")
print(two_sample_unknown_ztest)

#chi square test
# Create a contingency table (2x2)
observed <- matrix(c(20, 30, 15, 25), nrow = 2, byrow = TRUE)
rownames(observed) <- c("Group A", "Group B")
colnames(observed) <- c("Outcome 1", "Outcome 2")

# Perform the chi-square test
chisq_result <- chisq.test(observed)
print(chisq_result)


