# Creating Arrays
array1 <- array(1:6, c(2, 3, 1))  # Adjusted to 6 elements to avoid reshaping error
print(array1)


# Accessing Elements in an Array
array1[1, 2, 1]    # Access element at [row=1, column=2, matrix=1]
array1[1, , 1]  # Access entire first row in first matrix
array1[, 2, 1]  # Access entire second column in first matrix (Fixed error)


# Modifying Elements in an Array
array1[2, 3, 1] <- 99  # Changing a specific value
print(array1)


# Naming Dimensions (Fixed matrix names)
dimnames(array1) <- list(c("Row1", "Row2"), c("C1", "C2", "C3"), "M1")
print(array1)


# Creating another array with the same dimensions
array2 <- array(1:6, dim = c(2, 3, 1))  # Adjusted to match array1's dimensions


# Performing Operations on Arrays (Fixed dimension mismatch)
result <- array1 + array2
print(result)

result <- array1 * array2
print(result)


# Summing Over Dimensions
sum(array1)  # Sum over all elements
apply(array1, c(2, 3), sum)  # Sum across rows
apply(array1, c(1, 3), sum)  # Sum across columns


# Checking Array Dimensions
dim(array1)  # Returns c(2,3,1)
length(array1)  # Total number of elements


# Reshaping an Array (Fixing element count mismatch)
dim(array1) <- c(3, 2, 1)  # Adjusted to match total elements
print(array1)


# Applying Functions Across an Array
apply(array1, c(1, 2), mean)  # Compute mean for each row-column combination


# Convert Array to Vector
as.vector(array1)


# Using Logical Operations on Arrays
array1[array1 > 5]  # Finding elements greater than 5