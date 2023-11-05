# Part 1: Arrays

# Step 1: Create an array named numbers containing a sequence of integers.
numbers = [1, 2, 3, 4, 5]

# Step 2a: Add elements to the end of the array
numbers.push(6)

# Step 2b: Remove elements from the array
numbers.pop

# Step 2c: Insert elements at specific positions within the array
numbers.insert(2, 10)

# Step 2d: Find the length of the array
length = numbers.length

# Step 2e: Check if an element exists within the array
element_exists = numbers.include?(3)

# Step 2f: Access elements using index-based notation
second_element = numbers[1]

# Part 2: Hashes

# Step 1: Create a hash named student representing information about a student.
student = {
  name: "Alice",
  age: 18,
  grade: "A"
}

# Step 2a: Add new key-value pairs to the hash
student[:school] = "High School"

# Step 2b: Update the values associated with existing keys
student[:age] = 19

# Step 2c: Remove key-value pairs from the hash
student.delete(:grade)

# Step 2d: Access values using key-based notation
student_name = student[:name]

# Part 3: Combined Practice

# Step 1: Create an array of hashes representing a collection of students.
students = [
  { name: "Bob", age: 17, grade: "B" },
  { name: "Eve", age: 16, grade: "A" }
]

# Step 2a: Adding a new student record
new_student = { name: "Charlie", age: 18, grade: "A" }
students.push(new_student)

# Step 2b: Updating student information
students[0][:age] = 18

# Step 2c: Removing a student from the array
students.delete_at(1)

# Documenting the results of each operation
puts "Part 1 Results:"
puts "After push and pop: #{numbers}"
puts "After insert: #{numbers}"
puts "Array length: #{length}"
puts "Element 3 exists? #{element_exists}"
puts "Second element: #{second_element}"

puts "\nPart 2 Results:"
puts "After adding school: #{student}"
puts "After updating age: #{student}"
puts "After deletion: #{student}"
puts "Student name: #{student_name}"

puts "\nPart 3 Results:"
puts "After adding new student: #{students}"
puts "After updating student age: #{students}"
puts "After removing student: #{students}"
