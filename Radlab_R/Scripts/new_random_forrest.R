library(tidyverse)
library(randomForest)
library(caret)

# Load data
rf_data <- read.csv("rf_class.csv")

# Convert column names
colnames(rf_data) <- make.names(colnames(rf_data))

# Identify the 9 indicator taxa columns
indicator_taxa <- c("f64f55b1af9b863086103dbf76e94e9f", "X003a296ba4c55f34d62c224bda66f5a9", 
                    "X75bd82a728427b9fe0161be3977a9dee", "e3811dd729c742150d8c1c5f6e40c5a9",
                    "c8738b09261f9ea1f3414e16667fac02", "X226ab97195d19858d059fffaef17f5d7",
                    "X7b77d7b0590befdb68266063cee250a0", "X9e31424bebb25a100572229efc973274",
                    "bbc2bc36c756cc8b1509b77eba2ac381")

# Create subset with only the 9 indicator taxa
rf_indicator_data <- rf_data %>%
  select(all_of(c(indicator_taxa, "ionizing_radiation")))

# Set seed for reproducibility
set.seed(222)

# Create training and testing sets for indicator taxa model using the sample method from first code block
ind_indicator <- sample(2, nrow(rf_indicator_data), replace = TRUE, prob = c(0.7, 0.3))
train_indicator <- rf_indicator_data[ind_indicator == 1, ]
test_indicator <- rf_indicator_data[ind_indicator == 2, ]

# Convert target to factor
train_indicator$ionizing_radiation <- as.factor(train_indicator$ionizing_radiation)
test_indicator$ionizing_radiation <- as.factor(test_indicator$ionizing_radiation)

# Train random forest model with indicator taxa
rf_indicator <- randomForest(ionizing_radiation ~ ., data = train_indicator, proximity = TRUE)

# Make predictions on test data
pred_indicator <- predict(rf_indicator, test_indicator)
cm_indicator <- confusionMatrix(pred_indicator, test_indicator$ionizing_radiation)
accuracy_indicator <- cm_indicator$overall["Accuracy"]

# Create subset with all taxa except the 9 indicators
non_indicator_cols <- setdiff(names(rf_data), c(indicator_taxa, "ionizing_radiation"))
rf_all_other_taxa <- rf_data %>%
  select(all_of(c(non_indicator_cols, "ionizing_radiation")))

# Create training and testing sets for all-other-taxa model using the sample method from first code block
set.seed(222)
ind_all_other <- sample(2, nrow(rf_all_other_taxa), replace = TRUE, prob = c(0.7, 0.3))
train_all_other <- rf_all_other_taxa[ind_all_other == 1, ]
test_all_other <- rf_all_other_taxa[ind_all_other == 2, ]

# Convert target to factor
train_all_other$ionizing_radiation <- as.factor(train_all_other$ionizing_radiation)
test_all_other$ionizing_radiation <- as.factor(test_all_other$ionizing_radiation)

# Train random forest model with all other taxa
rf_all_other <- randomForest(ionizing_radiation ~ ., data = train_all_other, proximity = TRUE)

# Make predictions on test data
pred_all_other <- predict(rf_all_other, test_all_other)
cm_all_other <- confusionMatrix(pred_all_other, test_all_other$ionizing_radiation)
accuracy_all_other <- cm_all_other$overall["Accuracy"]

# Function to train and test a random forest model on a random subset of non-indicator taxa
train_test_random_subset <- function(seed_val) {
  set.seed(seed_val)
  
  # Randomly select 9 non-indicator taxa
  random_taxa <- sample(non_indicator_cols, 9)
  
  # Create dataset with random taxa
  rf_random_data <- rf_data %>%
    select(all_of(c(random_taxa, "ionizing_radiation")))
  
  # Create training and testing sets
  ind_random <- sample(2, nrow(rf_random_data), replace = TRUE, prob = c(0.7, 0.3))
  train_random <- rf_random_data[ind_random == 1, ]
  test_random <- rf_random_data[ind_random == 2, ]
  
  # Convert target to factor
  train_random$ionizing_radiation <- as.factor(train_random$ionizing_radiation)
  test_random$ionizing_radiation <- as.factor(test_random$ionizing_radiation)
  
  # Train random forest model
  rf_random <- randomForest(ionizing_radiation ~ ., data = train_random, proximity = TRUE)
  
  # Make predictions on test data
  pred_random <- predict(rf_random, test_random)
  cm_random <- confusionMatrix(pred_random, test_random$ionizing_radiation)
  accuracy_random <- cm_random$overall["Accuracy"]
  
  # Return accuracy and taxa used
  return(list(accuracy = accuracy_random, taxa = random_taxa))
}

# Run the function 200 times with different seeds
set.seed(123)
seed_values <- sample(1000:9999, 200)
random_results <- lapply(seed_values, train_test_random_subset)

# Extract accuracies
random_accuracies <- sapply(random_results, function(x) x$accuracy)

# Create data frame for plotting
plot_data <- data.frame(
  Model = c("Indicator Taxa", "All Other Taxa", paste0("Random Set ", 1:200)),
  Accuracy = c(accuracy_indicator, accuracy_all_other, random_accuracies),
  Type = c("Indicator", "All Others", rep("Random", 200))
)

# Sort the random combinations by accuracy
plot_data <- plot_data %>%
  arrange(desc(Accuracy)) %>%
  mutate(Model = factor(Model, levels = Model))

# Create the bar plot
ggplot(plot_data, aes(x = Model, y = Accuracy, fill = Type)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  labs(title = "Random Forest Model Accuracy Comparison",
       subtitle = "9 Indicator Taxa vs All Other Taxa vs 200 Random Sets of 9 Taxa",
       x = "Model",
       y = "Accuracy") +
  scale_fill_manual(values = c("Indicator" = "red", "All Others" = "blue", "Random" = "gray")) +
  geom_hline(yintercept = accuracy_indicator, linetype = "dashed", color = "red") +
  geom_hline(yintercept = accuracy_all_other, linetype = "dashed", color = "blue")

# Calculate summary statistics
mean_random_accuracy <- mean(random_accuracies)
median_random_accuracy <- median(random_accuracies)
max_random_accuracy <- max(random_accuracies)
min_random_accuracy <- min(random_accuracies)

#Create better plot
library(ggplot2)

# Create a data frame for the random accuracies only
random_accuracy_df <- data.frame(
  Accuracy = random_accuracies,
  Type = "Random Sets"
)

# Calculate summary statistics for plotting
random_summary <- data.frame(
  Type = "Random Sets",
  Mean = mean(random_accuracies),
  Median = median(random_accuracies),
  Q1 = quantile(random_accuracies, 0.25),
  Q3 = quantile(random_accuracies, 0.75),
  Min = min(random_accuracies),
  Max = max(random_accuracies),
  SD = sd(random_accuracies)
)

# Create a data frame for comparison models
comparison_models <- data.frame(
  Type = c("Indicator Taxa", "All Other Taxa"),
  Accuracy = c(accuracy_indicator, accuracy_all_other)
)

# Create the box plot with error bars
ggplot() +
  # Random set box plot
  geom_boxplot(data = random_accuracy_df, 
               aes(x = Type, y = Accuracy, fill = Type),
               width = 0.5,
               outlier.shape = 16,
               outlier.size = 2,
               outlier.alpha = 0.7) +
  # Add error bars
  geom_errorbar(data = random_summary,
                aes(x = Type, 
                    ymin = Mean - SD, 
                    ymax = Mean + SD),
                width = 0.2,
                size = 1) +
  # Add points for indicator taxa and all taxa
  geom_point(data = comparison_models,
             aes(x = Type, y = Accuracy, color = Type),
             size = 4,
             position = position_dodge(width = 0.75)) +
  # Add text labels and lines
  geom_text(data = comparison_models,
            aes(x = Type, y = Accuracy, label = round(Accuracy, 3)),
            hjust = -0.5,
            vjust = 0.5) +
  geom_hline(yintercept = accuracy_indicator, 
             linetype = "dashed", 
             color = "red") +
  geom_hline(yintercept = accuracy_all_other, 
             linetype = "dashed", 
             color = "blue") +
  
  
  labs(title = "Comparison of Random Forest Model Accuracies",
       subtitle = paste("Random Sets (n=200) vs Indicator Taxa vs All Other Taxa\n",
                        "Error bars show mean ± standard deviation"),
       x = "",
       y = "Accuracy") +
  scale_fill_manual(values = c("Random Sets" = "gray80", 
                               "Indicator Taxa" = "red", 
                               "All Other Taxa" = "blue")) +
  scale_color_manual(values = c("Indicator Taxa" = "red", 
                                "All Other Taxa" = "blue")) +
  theme_minimal() +
  theme(legend.position = "bottom",
        plot.title = element_text(face = "bold"),
        axis.text = element_text(size = 12),
        axis.title = element_text(size = 14)) +
  ylim(min(min(random_accuracies), accuracy_all_other, accuracy_indicator) - 0.05,
       max(max(random_accuracies), accuracy_all_other, accuracy_indicator) + 0.05)

# create summary
summary_table <- data.frame(
  Model = c("Indicator Taxa", "All Other Taxa", "Random Sets (Mean)", "Random Sets (Median)",
            "Random Sets (Min)", "Random Sets (Max)", "Random Sets (SD)"),
  Accuracy = c(accuracy_indicator, accuracy_all_other, 
               mean(random_accuracies), median(random_accuracies),
               min(random_accuracies), max(random_accuracies), 
               sd(random_accuracies))
)


print(summary_table)
