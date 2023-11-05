# Assignment: Exploring Arrays and Hashes in Ruby

# Part 1: Exploring Arrays

# Step 1: Create an empty array named fruits.
fruits = []

# Step 2: Add the following fruits to the array.
fruits.push("apple", "banana", "orange", "grape", "watermelon")

# Step 3: Display the contents of the array.
puts "Fruits array: #{fruits.inspect}"

# Step 4: Replace "banana" with "kiwi" and update the array.
fruits[1] = "kiwi"

# Step 5: Remove "orange" from the array.
fruits.delete("orange")

# Step 6: Find and display the length of the array.
length = fruits.length
puts "The length of the array is: #{length}"

# Step 7: Access and display the first and last elements of the array.
first_fruit = fruits.first
last_fruit = fruits.last
puts "First fruit: #{first_fruit}, Last fruit: #{last_fruit}"

# Step 8: Sort the array in alphabetical order and display the result.
sorted_fruits = fruits.sort
puts "Sorted fruits: #{sorted_fruits.inspect}"

# Part 2: Exploring Hashes

# Step 1: Create an empty hash named person.
person = {}

# Step 2: Add key-value pairs to the hash.
person["name"] = "Alice"
person["age"] = 25
person["occupation"] = "Software Engineer"

# Step 3: Display the contents of the hash.
puts "Person hash: #{person.inspect}"

# Step 4: Update the value associated with the "age" key.
person["age"] = 26

# Step 5: Remove the "occupation" key-value pair from the hash.
person.delete("occupation")

# Step 6: Check if the hash contains the key "address".
contains_address = person.key?("address")
puts "Contains address key? #{contains_address}"

# Step 7: Access and display the value associated with the "name" key.
name_value = person["name"]
puts "Name: #{name_value}"

# Step 8: Display all keys and values in the hash.
keys = person.keys
values = person.values
puts "Keys: #{keys.inspect}"
puts "Values: #{values.inspect}"
