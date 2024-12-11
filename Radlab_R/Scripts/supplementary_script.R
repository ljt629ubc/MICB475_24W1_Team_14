library(ggplot20
        
#Creating data frame of radiation doses
n_values <- c("n = 9", "n = 7", "n = 10", "n = 10 ", "n = 10  ")
y_values <- c(0.008, 0.016, 0.1, 0.25, 1)
data <- data.frame(n_values, y_values)



# Separate the y values of 0.1, 0.25, and 1 into separate bars,
data_separated <- data.frame(
  n_values = c("n = 9", "n = 7", "n = 10", "n = 10 ", "n = 10  "),
  y_values = c(0.008, 0.016, 0.1, 0.25, 1)
)

#Colouring samples based on dataset (RadLab or RadSpace) 
data_separated$color <- ifelse(seq_along(data_separated$n_values) <= 2, "RadSpace", "RadLab")

data_separated$n_values <- factor(data_separated$n_values, 
                                 levels = data_separated$n_values[order(data_separated$y_values)])
# Generate the bar chart to visualize radiation doses 
dosage <- ggplot(data_separated, aes(x = n_values, y = y_values, fill = color)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("RadSpace" = "blue", "RadLab" = "red")) +
  labs(y = "Radiation Dosage (Gy)", x = "", fill = "") +
  theme_minimal() +
  theme(legend.position = "right") +
  geom_text(aes(label = y_values), vjust = -0.5) + 
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(color = "black"))
dosage
ggsave(file = "radiation_dosage.png",
       plot = dosage,
       height=8, width=8)
