##exchange.sort.ascending
# Section 1: library packages

# Section 2: self-defined functions
exchange.sort.asc <- function(input_vector,decreasing=FALSE) {
  if(decreasing==FALSE){
  for (i in 1:(length(input_vector) - 1)) {
    for (j in (i + 1):length(input_vector)) {
      if (input_vector[i] > input_vector[j]) {
        temp <- input_vector[i]
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      }
    }
  }
  return(input_vector)
}else{for (i in 1:(length(input_vector) - 1)) {
    for (j in (i + 1):length(input_vector)) {
      if (input_vector[i] < input_vector[j]) {
        temp <- input_vector[i]
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      }
    }
  }
  return(input_vector)
  }
}
# Section 3: inputs and parameters
my_vector <- c(33627,24646,2432,62,2947,83928,499)
# Section 4: function call
exchange.sort.asc(my_vector, decreasing= F) ##decreasing=FALSE(ascending)
exchange.sort.asc(my_vector, decreasing= T) ##decreasing=TRUE(descending)
