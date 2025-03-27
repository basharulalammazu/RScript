# 📘 **RScript Repository - The Ultimate Guide to R Programming**  

Welcome to **RScript**, a **comprehensive** and **structured** repository designed to help you master **R programming**. This repository covers **essential programming concepts**, including **basic operations, control structures, loops, functions, and data structures**.


---

## 📂 **Repository Structure**  

This repository contains well-documented R scripts categorized as follows:  

| 📁 **File Name**                | 📌 **Description** |
|---------------------------------|----------------------------------------------------|
| `Basic.R`                       | Covers arithmetic operations, mathematical functions, and string manipulation. |
| `Conditional Statement.R`        | Demonstrates decision-making in R using `if`, `ifelse`, and `switch` statements. |
| `Loop.R`                         | Explores looping constructs (`for`, `while`), `break`, and `next` statements. |
| `Function.R`                     | Guides you in creating reusable functions with parameters and return values. |
| `Data Structure(Vector).R`        | Covers vector operations, sorting, and accessing elements. |

---

## 📖 **Detailed Overview of Scripts**  

### 🔢 **Basic.R - Core R Operations**  
This script introduces **fundamental R programming concepts**, including arithmetic calculations, operator precedence, mathematical functions, and string manipulation.  

#### ✅ **Key Topics Covered:**  
- **Basic Arithmetic Operations:** `+`, `-`, `*`, `/`, `^`, `%%` (modulus), `%/%` (integer division).  
- **Operator Precedence:** Understanding **BODMAS** rules in R.  
- **Mathematical Functions:** `sqrt()`, `abs()`, `ceiling()`, `floor()`, `round()`, `log()`, `exp()`.  
- **String Manipulation:** `tolower()`, `toupper()`, `nchar()`, `substr()`, `paste()`, `strsplit()`.  
- **Statistical Functions:** `min()`, `max()`, `sum()`, `mean()`, `median()`, `sd()`, `var()`, `range()`.  
- **Finding Mode in a Vector:** Using `table()`, `sort()`, and `which.max()`.  

📌 **Example Code Snippet:**  
```r
x <- 15
y <- 4
result <- x %% y  # Modulus operation
print(result)  # Output: 3
```

---

### 🛠️ **Conditional Statement.R - Decision Making in R**  
This script covers the **control flow statements** that enable decision-making based on conditions.  

#### ✅ **Key Topics Covered:**  
- **`if` Statement:** Executes code if a condition is `TRUE`.  
- **`ifelse` Statement:** A vectorized conditional function that returns values based on a logical test.  
- **`switch` Statement:** Selects an output based on multiple case options.  

📌 **Example Code Snippet:**  
```r
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is 5 or less")
}
```

✅ **Real-World Application:** Used in **data filtering**, **categorization**, and **conditional data transformation** in **data science**.  

---

### 🔄 **Loop.R - Iteration in R**  
This script explores **looping structures** in R, enabling repeated execution of code blocks.  

#### ✅ **Key Topics Covered:**  
- **`while` Loop:** Repeats a block of code **as long as a condition holds true**.  
- **`for` Loop:** Iterates over sequences such as vectors and lists.  
- **`break` Statement:** Exits a loop when a condition is met.  
- **`next` Statement:** Skips the current iteration and moves to the next.  

📌 **Example Code Snippet:**  
```r
for (i in 1:5) {
  print(paste("Iteration:", i))
}
```

✅ **Real-World Application:** Used for **automating data processing**, **batch processing**, and **data cleaning**.  

---

### 🔣 **Function.R - Writing Functions in R**  
Functions **promote code reusability** and **modular programming**.  

#### ✅ **Key Topics Covered:**  
- **Creating Functions** using `function()`.  
- **Passing Arguments** to functions.  
- **Returning Values** using `return()`.  

📌 **Example Code Snippet:**  
```r
add_numbers <- function(a, b) {
  return(a + b)
}
print(add_numbers(5, 10))  # Output: 15
```

✅ **Real-World Application:** Used for **creating reusable scripts**, **data processing**, and **building custom R packages**.  

---

### 📊 **Data Structure(Vector).R - Understanding Vectors in R**  
Vectors are **fundamental** in R, used in **statistical computing** and **data analysis**.  

#### ✅ **Key Topics Covered:**  
- **Creating Vectors** using `c()`.  
- **Mathematical Operations** on vectors.  
- **Sorting Vectors** using `sort()`.  
- **Accessing Elements** using indexing and logical conditions.  

📌 **Example Code Snippet:**  
```r
x <- c(2, 4, 6, 8)
y <- x * 2
print(y)  # Output: [1] 4 8 12 16
```

✅ **Real-World Application:** Used for **data storage**, **vectorized calculations**, and **machine learning**.  

---

## 🚀 **Getting Started**  
To use these scripts, follow these steps:  

### 1️⃣ **Clone the Repository:**  
```sh
git clone https://github.com/basharulalammazu/RScript.git
cd RScript
```
### 2️⃣ **Open RStudio or R Console**  
### 3️⃣ **Run the Scripts:**  
```r
source("Basic.R")
source("Conditional Statement.R")
source("Loop.R")
source("Function.R")
source("Data Structure(Vector).R")
```

---

## 📚 **Additional Resources**  
Expand your knowledge with these valuable resources:  

- 📌 **[R Documentation](https://www.r-project.org/)**  
- 📌 **[R for Data Science (Book)](https://r4ds.had.co.nz/)**  
- 📌 **[RStudio Cheatsheets](https://posit.co/resources/cheatsheets/)**  
- 📌 **[Tidyverse for Data Science](https://www.tidyverse.org/)**  

---

## 📧 **Contact & Support**  
If you have any questions, feel free to reach out:  

🔹 **GitHub**: [Basharul Alam Mazu](https://github.com/basharulalammazu)  
🔹 **Email**: basharulalam6@gmail.com  
🔹 **LinkedIn**: [Basharul Alam Mazu](https://linkedin.com/in/basharulalammazu)  

---

### ⭐ **If you find this repository useful, don't forget to** ⭐ **star it!**  

📌 **Happy Coding with R! 🚀**