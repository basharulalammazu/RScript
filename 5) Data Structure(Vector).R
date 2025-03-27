# Vectors are one-dimensional arrays that can hold numeric data, character data, or logical data. The combine function c() is used to form the vector.

# Vector
id <- c(1, 2, 5, 3, 6, -2, 4)
name <- c("Basharul", "Alam", "Mazu")
passed <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

print(id)
print(name)
print(passed)



#-----------Mathematical operations Using Vector--------------------
x <- c(2, 6, 8, 10, 4)

# add 2 to each element of the vector x
print(x+2)

# multiple each element of x by 3
print(x*3)

# add elements together in matching positions
x + c(10, 2, 5, 7, 9) 	
print(x)



#------------------Sorting---------------------------------------
#  Ascending order
x <- sort(x)  
print(paste("Sorted Vector(ascending): ", x))

#  Descending order
x <- sort(x, decreasing = TRUE) 
print(paste("Sorted Vector(descending):", toString(x))) 




#--------------Vector Access-----------------------------------
print(x[3])
print(x[2]+10)
print(x[4]*3)




