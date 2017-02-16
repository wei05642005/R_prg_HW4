##Standard Deviation
# Section 1: library packages

# Section 2: self-defined functions
standard_de <-function(input_vector){
  count <- 0
  for(i in input_vector){
    count <- count+1
    res <- input_vector-(mean(input_vector))
    SD <- sqrt(sum(res^2) / (count-1))
  }
  return(SD)
} 
# Section 3: inputs and parameters
my_vector <- c(23,64,32,83,12,43,97,25)
# Section 4: function call
standard_de(my_vector)
#exame the results by sd()
sd(my_vector)