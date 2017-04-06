# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(A,B) {
  diff <- abs(length(A) - length(B))
  output <- "The difference in lengths is "
  return (paste0(output, diff))
}



# Pass two vectors of different length to your `CompareLength` function

a <- c(1:100)
b <- c(1:99)

output <-CompareLength(a,b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(A,B) {
  if(length(A) > length(B)) {
    return(paste0("Your first vector is longer by ", length(A) - length(B), " elements"))
  } else {
    return(paste0("Your second vector is longer by ", length(B) - length(A), " elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function

a <- c(1:100)
b <- c(1:99)

output2 <- DescribeDifference(a,b)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference2 <- function(A,B) {
  if(length(A) > length(B)) {
    return(paste0(deparse(substitute(A))," is longer by ", abs(length(A) - length(B)), "elements"))
  } else {
    return(paste0(deparse(substitute(A)), " is longer by ", abs(length(A) - length(B)), "elements"))
  }
}

a <- c(1:100)
b <- c(1:99)

output3 <- DescribeDifference2(a,b)




