# Create a sample dataframe
df <- data.frame(
  A = c(1, 2, NA, 4),
  B = c(NA, 2, NA, 5),
  C = c(1, NA, NA, 4)
)

df
# Function to count NA values in a dataframe
count_na_values = function(df) {
  na_count = sum(is.na(df))
  return(na_count)
}

# Count NA values in the dataframe
na_count <- count_na_values(df)
print(paste("Number of NA values in dataframe:", na_count))
