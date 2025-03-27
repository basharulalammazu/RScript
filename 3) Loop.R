# While loop example
count <- 1
while (count <= 5) {
  print(paste("Counter:", count))
  count <- count + 1
}

# Another while loop demonstrating 'next' and 'break'
while (count >= 0) {
  if (count == 4) {
    count <- count - 1  # Decrement before skipping
    next  # Skip the iteration when count is 4
  } else if (count == 2) {
    break  # Exit loop when count is 2
  }
  print(paste("Counter:", count))
  count <- count - 1
}

# For loop example
for (x in 1:10) {
  print(x)
}

# Printing numbers from 1 to 10 with step size of 2
for (x in seq(1, 10, by = 2)) {
  print(x)
}

# Nested For loop example
for (x in 1:5){
  for (y in 1:10){
    print(paste(x, "*", y, "=", x * y))
  }
}
