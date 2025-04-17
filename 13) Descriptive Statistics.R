# Load the dataset from a CSV file
dataset <- read.csv("D:/Github/R-Language/Dataset/Iris.csv")
print(dataset)  # Print the full dataset



# Display values from the Species column
dataset$Species



# Select specific columns (features) for analysis
vars <- c("SepalLengthCm", "SepalWidthCm", "PetalLengthCm", "PetalWidthCm")
head(dataset[vars])  # Show first few rows of selected variables




# Show summary statistics (mean, min, max, median, etc.)
# for selected features
summary(dataset[vars])



# Show unique values (species) in the dataset
unique(dataset$Species)



# Convert Species names into factor with numeric labels
# (for machine learning or analysis purposes)
dataset$Species <- factor(dataset$Species, 
                          levels = c("Iris-setosa", "Iris-versicolor","Iris-virginica"),
                          labels = c(1, 2, 3))



# Print dataset after encoding Species
print(dataset)



# Show the structure of the dataset (data types, column info)
str(dataset)



# Calculate standard deviation of a single attribute
s <- dataset$SepalLengthCm
sd(s)  # Standard deviation of Sepal Length



# Calculate standard deviation of all numeric columns using dplyr
# summarise_if applies the function only on numeric columns
library(dplyr)
dataset %>% summarise_if(is.numeric, sd)



# Select random 3 rows from the dataset
sample_n(dataset, 3)



# Select only SepalLengthCm column and store in new dataframe
dataset2 <- select(dataset, SepalLengthCm)
print(dataset2)



# Check for any missing values (NA) in the dataset
is.na(dataset)



# Count number of missing values (NA) per column
colSums(is.na(dataset))



# Find the row number(s) with missing values in SepalLengthCm
which(is.na(dataset$SepalLengthCm))



# Remove rows with any missing values from the dataset
# na.omit() removes all rows with at least one NA
remove <- na.omit(dataset)