# Create sample dataframes
df1 <- data.frame(
  A = c(1, 2, 3, 4, 5),
  B = c(6, 7, 8, 9, 10)
)
df1
a=unlist(df1)
a
df2 <- data.frame(
  A = c(2, 3, 4, 5, 6),
  B = c(7, 8, 9, 10, 11)
)

# Function to find elements that occur only once and are common to both dataframes
find_unique_common = function(df1, df2) {
  common_elements = intersect(unlist(df1), unlist(df2))
  return(common_elements)
}

# Find unique common elements
unique_common_elements <- find_unique_common(df1, df2)

# Print the unique common elements
print("Unique common elements:")
unique_common_elements
