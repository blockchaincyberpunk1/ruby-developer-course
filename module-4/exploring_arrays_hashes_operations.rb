# Assignment: Exploring Arrays and Hashes Operations in Ruby

# Part 1: Arrays Exploration

# Step 1: Create an array named numbers containing integers: 5, 10, 15, 20, 25.
numbers = [5, 10, 15, 20, 25]

# Step 2: Use array methods to perform specific operations.

# a. Add the number 30 to the end of the array.
numbers.push(30)

# b. Remove the number 10 from the array.
numbers.delete(10)

# c. Insert the number 12 at index 2.
numbers.insert(2, 12)

# d. Find the total number of elements in the array.
total_elements = numbers.length

# e. Check if the array contains the number 15.
contains_15 = numbers.include?(15)

# f. Access and display the element at index 3.
element_at_index_3 = numbers[3]

# Part 2: Hashes Exploration

# Step 1: Create a hash named book representing book's information.
book = {
  "title" => "The Great Gatsby",
  "author" => "F. Scott Fitzgerald",
  "year" => 1925
}

# Step 2: Use hash methods to perform specific operations.

# a. Add a new key "genre" with the value "Fiction" to the hash.
book["genre"] = "Fiction"

# b. Update the author's name to "Francis Scott Fitzgerald."
book["author"] = "Francis Scott Fitzgerald"

# c. Remove the "year" key from the hash.
book.delete("year")

# d. Check if the hash contains the key "rating."
contains_rating = book.key?("rating")

# e. Access and display the value associated with the "title" key.
title_value = book["title"]

# Part 3: Reporting

# Write a brief report summarizing findings from array and hash explorations.
report = <<~REPORT
  In this assignment, I performed the following tasks:

  Array Exploration:
  - Created an array named numbers with integers 5, 10, 15, 20, 25.
  - Used array methods to add 30 to the end, remove 10, and insert 12 at index 2.
  - Found the total number of elements in the array and checked if it contains 15.
  - Accessed and displayed the element at index 3.

  Hash Exploration:
  - Created a hash named book representing book information.
  - Used hash methods to add a "genre" key, update the author's name, and remove the "year" key.
  - Checked if the hash contains the key "rating" and accessed the value associated with the "title" key.

  My observations and insights:
  - Arrays and hashes are versatile data structures in Ruby.
  - Array methods like push, delete, and include? are helpful for manipulation.
  - Hash methods like []=, delete, and key? provide efficient ways to modify and access data.
REPORT

# Print the report
puts report
