# Reading Data from a csv file
# mydataframe <- read.csv(file, header=logical_value, sep="delimiter")


# Read data from a CSV file
data <- read.csv("D:/Github/R-Language/Dataset/StudentData.csv", header =  TRUE, sep = ",")

# Display the first few rows of the dataset
head(data)

# Selecting specific columns 
selected_columns <- data[, c("Name", "Age")]
print(selected_columns)


# Selecting specific rows (e.g., rows 1 to 5)
selected_rows <- data[1:5, ]
print(selected_rows)


# select columns
data$Name



# Creating a subset of the data 
subset_data <- subset(data, Age > 30)
print(subset_data)

subset_data_gender <- subset(data, Gender == "Male")
print(subset_data_gender)


# Subset with multiple conditions 
subset_conditional <- subset(data, Age > 25 & Gender == "Male")
print(subset_conditional)