# ================================================
# 📦 Defining and Manipulating a List in R
# ================================================

# Define individual objects
title <- "My Info"                         # A character string
name <- "Basharul - Alam - Mazu"          # Another character string
institution <- c("MMSC", "ICD", "AIUB")   # A character vector

# Create a matrix (4 rows, 6 columns) using numbers 1 to 24
matrix_data <- matrix(1:24, nrow = 4, ncol = 6)

# Create a list containing all the above elements
# Named elements help with structured access
myList <- list(
  title = title,
  name = name,
  institution = institution,
  matrix = matrix_data
)

# Print the complete list
print(myList)

# ================================================
# ➕ Adding Elements to the List
# ================================================

# Add a new element to the list using append()
myList <- append(myList, list(department = "CSE"))
print(myList)  # Now the list has a new named element 'department'

# ================================================
# ➖ Removing Elements from the List
# ================================================

# Remove the second element (in this case, 'name')
myList <- myList[-2]
print(myList)  # The list now excludes the 'name' element
