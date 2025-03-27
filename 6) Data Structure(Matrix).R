# myMatrix <- matrix(vector, nrow, ncol)
#  mymatrix<-matrix(vector,nrow = no_of_rows,ncol = no_of_columns,byrow = logical_value ,dimnames = list(char_vector_rownames,char_vector_columnsnames))

# matrix [row, column]
# By default matrix value assign in column 
myMatrix <- matrix(1:20, nrow=5, ncol=4)
myMatrix

myMatrix[1, 3]
myMatrix[1, 3] <- 50
myMatrix[1, 3]
myMatrix[2, c(1,2,3,4)]


# By using byrow command in that time matrix value assign in row wise
# dimnames assigns row and column names
matrix_data <- matrix(1:6, nrow = 2, byrow = TRUE, 
                      dimnames = list(c("Row1", "Row2"), c("Col1", "Col2", "Col3")))
print(matrix_data)

cells <- (1:4)
rName <- c("R1", "R2", "R3")
cName <- c("C1", "C2")
myMatrix <- matrix(cells, nrow=3, ncol=2, byrow = TRUE, dimnames=list(rName, cName))
myMatrix
  
  
# myarray <- array(vector, dimensions, dimnames)
# c(2,3,2) -> No of column, No of rows, no of vector 
myArray <- array(1:24, c(2,3,2))
print(myArray)


# Data Access: arrayName{row, col, array number}
print(myArray[1, 2, 1])
