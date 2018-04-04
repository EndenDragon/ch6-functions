# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function (str1, str2) {
  return(nchar(str1) >= nchar(str2))
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("dog", "a"))
print(is_twice_as_long("a", "dog"))


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function (s1, s2) {
  if (nchar(s1) > nchar(s2)) {
    return(paste("Your first string is longer by", nchar(s1) - nchar(s2), "characters"))
  } else if (nchar(s1) < nchar(s2)) {
    return(paste("Your second string is longer by", nchar(s2) - nchar(s1), "characters"))
  }
  return("Your strings are the same length!")
}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
print(describe_difference("Rainbow Dash", "Flutters"))
print(describe_difference("Rainbow", "Fluttershy"))
print(describe_difference("Rainbow", "Rainbow"))
