# ------------------------------------
#     Using readline() Function
# ------------------------------------
# - readline() reads a line from the console as a string.
# - So, input values need to be converted into numeric types if necessary.



name <- readline(prompt = "Enter your name: ")      # Read name (string)
age <- readline(prompt = "Enter your age: ")        # Read age (string)
cgpa <- readline(prompt = "Enter your CGPA: ")      # Read cgpa (string)


# Convert string input to appropriate numeric types
age <- as.integer(age)      # Convert to integer
cgpa <- as.double(cgpa)     # Convert to double (floating point)


# Print the input values
print(name)
print(age)
print(cgpa)




# ------------------------------------
#     Using scan() Function
# ------------------------------------
# - scan() reads input as a vector.
# - To stop input, press Enter twice (blank input).
# - By default, it expects numeric input.



# Read a general numeric vector from user
x <- scan()
print(x)


# Read input explicitly as double (floating point values)
d <- scan(what = double())
print(d)