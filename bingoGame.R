rm(list = ls())

#generate user guesses
guesses <- sample(1:75, 10, replace = T)

#probability chart
probChart <- function(n = 10, p = 10/75) {
  probs <- data.frame("Wins" = integer(), 
                    "Probability" = numeric())

  for (x in 0:n) {
    prob <- dbinom(x, size = n, prob = p)
    temp <- data.frame(x, prob)
    names(temp) <- c("Wins", "Probability")
    probs <- rbind(probs, temp)
  }
  print(probs)
}

#output
probChart()
print (guesses)
