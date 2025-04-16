# ==========================================================
# 📋 Data Frame Basics
# ==========================================================

# A data frame is more flexible than a matrix because 
# each column can contain different types of data (e.g., numeric, character).
# A data frame is created using the data.frame() function:
# Syntax: variableName <- data.frame(col1, col2, col3, ...)

# Creating individual vectors for student data
studentID <- c(1, 2, 3)              # Numeric vector for student IDs
age <- c(23, 24, 22)                 # Numeric vector for ages
university <- c("AIUB", "NSU", "BRACU")  # String vector for university names
cgpa <- c(3.8, 2.7, 3.4)             # Numeric vector for CGPA

# Creating the data frame from the vectors
studentData <- data.frame(studentID, age, university, cgpa)
studentData  # Display the data frame

# ==========================================================
# ➕ Adding a New Column to the Data Frame
# ==========================================================

# Add a new column named "Zila" using $ notation
studentData$Zila <- c("Feni", "Dhaka", "Gazipur")
studentData  # Display updated data frame

# Add another column named "upzila" using cbind() function
studentData <- cbind(studentData, upzila = c("Fulgazi", "Shabag", "Nodiya"))
studentData  # Display updated data frame

# ==========================================================
# ➕ Adding a New Row to the Data Frame
# ==========================================================

# Add a new row using rbind()
# Ensure the new row matches the column count and order
studentData <- rbind(studentData, c(4, 25, "AIUB", 3.5, "Feni", "Feni"))
studentData  # Display updated data frame

# Note: After rbind(), all data becomes character type if types don't match

# ==========================================================
# 🔍 Accessing Elements from the Data Frame
# ==========================================================

# Access the first two columns
studentData[1:2]

# Access the 'cgpa' column using column name
studentData[c("cgpa")]      
studentData$cgpa

# Access a specific element — row 2, column "university"
studentData[2, "university"]

