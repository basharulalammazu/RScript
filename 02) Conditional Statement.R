# Checking two numbers using if-else statement
a <- 10
b <- 20

if (a > b) {
  print("a is greater than b")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("b is greater than a")
}

# Using ifelse() function for conditional assignment
cgpa <- 3.74
result <- ifelse(cgpa > 3.5, "Scholarship", "No Scholarship")
print(result)


# --------------------------------------------------------------------------------------------------------- #
# Using switch statement to select a color based on index
color <- switch(2, "red", "green", "blue")
print(color)
