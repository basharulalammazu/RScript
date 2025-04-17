# ==================================================
# 🧮 Simple Arithmetic Operations
# ==================================================

1 + 1  # Addition of two numbers
2 + 2  # Addition of two numbers

# ==================================================
# 🔢 Operator Precedence (BODMAS Rule)
# ==================================================

2 + 3 * 10 / 2  
# Multiplication (*) and Division (/) are evaluated before Addition (+)
# Equivalent to: 2 + (3 * 10) / 2 = 2 + 30 / 2 = 2 + 15 = 17

# ==================================================
# 🔢 Exponentiation (Power)
# ==================================================

3^2  # 3 raised to the power of 2 (3² = 9)

# ==================================================
# 🏗️ Built-in Mathematical Functions
# ==================================================

sqrt(10)  # Computes the square root of 10
pi        # Returns the mathematical constant π (3.141592653...)

# ==================================================
# ❌ Incorrect Function Usage
# ==================================================

pie(3)  
# ⚠️ 'pie()' is a function used to create pie charts, not for π (pi)

# ==================================================
# 🔢 Variable Declaration and Arithmetic
# ==================================================

x <- 10   # Assigns value 10 to variable x
y <- 15   # Assigns value 15 to variable y
z <- 20   # Assigns value 20 to variable z

x * y * z  # Multiplies x, y, and z

# ==================================================
# 🔢 Built-in Mathematical Functions
# ==================================================

abs(-100.05)  # Absolute value (converts negative to positive)
sqrt(100)     # Computes the square root of 100 (result: 10)
ceiling(pi)   # Rounds π upwards to the nearest integer (result: 4)
floor(pi)     # Rounds π downwards to the nearest integer (result: 3)

# ==================================================
# 🔠 String Functions
# ==================================================

name <- "Basharul - Alam - Mazu"  # String variable

tolower(name)  # Converts all characters in the string to lowercase
toupper(name)  # Converts all characters in the string to uppercase
nchar(name)    # Counts the number of characters in the string (including spaces)

# Splitting the string by " - "
strsplit(name, split = " - ")  

# ==================================================
# 📊 Statistical Functions
# ==================================================

data <- c(100, 20, 50, 10, 20, 20)  # Numeric dataset

min_value <- min(data)     # Finds the minimum value in the dataset
max_value <- max(data)     # Finds the maximum value in the dataset
sum_value <- sum(data)     # Computes the sum of all elements in the dataset
mean_value <- mean(data)   # Computes the mean (average) of the dataset
mode_value <- mode(data)   # Returns the mode (data type) of the dataset
range_value <- range(data) # Returns a vector with min and max values
sd_value <- sd(data)       # Computes the standard deviation of the dataset

# Finding the mode manually (most frequently occurring value)
find_value <- as.numeric(names(sort(table(data), decreasing = TRUE)[1]))

# Printing the statistical results
print(paste("Min:", min_value))                  # Prints the minimum value
print(paste("Max:", max_value))                  # Prints the maximum value
print(paste("Sum: ", sum_value))                 # Prints the sum of values
print(paste("Mean: ", mean_value))               # Prints the mean value
print(paste("Mode (data type): ", mode_value))   # Prints the mode (data type)
print(paste("Range:", diff(range_value)))        # Prints the range difference
print(paste("Most Frequent Value: ", find_value))# Prints the most frequent value
print(paste("Standard Deviation: ", sd_value))   # Prints the standard deviation
print(paste("Range: ", range_value))             # Prints the range (min and max values)

# ==================================================
# 🔠 String Concatenation
# ==================================================

nickname <- "Mazu"  # Defining a nickname

paste(name, nickname)  # Concatenates 'name' and 'nickname' with a space
cat(name)  # Outputs the value of 'name' without quotes
