# Assignment: Exploring Enumerable Methods for Data Analysis in Ruby

# Assignment Overview:
# In this assignment, you will engage in a practical exercise that involves working with a dataset using various enumerable methods in Ruby.
# You will apply enumerable methods to filter, transform, and analyze the data to gain insights and answer specific questions.

# Dataset: Student Grades
# You are provided with a dataset containing student grades. Each student has a name and an array of grades for different subjects. The dataset is as follows:

students = [
  { name: "Alice", grades: [95, 88, 76, 92, 81] },
  { name: "Bob", grades: [78, 89, 95, 62, 74] },
  { name: "Charlie", grades: [85, 90, 88, 77, 95] },
  { name: "David", grades: [92, 85, 78, 90, 87] },
  { name: "Eve", grades: [74, 82, 91, 88, 79] }
]

# Part 1: Filtering and Transforming Data

# Step 1: Use enumerable methods to filter out students who have at least one grade below 80.
passed_students = students.select { |student| student[:grades].all? { |grade| grade >= 80 } }

# Step 2: Transform the grades of each student to calculate their average grade using the reduce method.
students_with_average = passed_students.map do |student|
  average_grade = student[:grades].reduce(:+) / student[:grades].length.to_f
  { name: student[:name], average_grade: average_grade }
end

# Step 3: Display the new array of student names and their average grades.
students_with_average.each do |student|
  puts "#{student[:name]} - Average Grade: #{student[:average_grade]}"
end

# Part 2: Analyzing Data

# Step 1: Find the student with the highest average grade using the max_by method.
best_student = students_with_average.max_by { |student| student[:average_grade] }
puts "Best Student: #{best_student[:name]} - Average Grade: #{best_student[:average_grade]}"

# Step 2: Calculate the total number of grades across all students using the sum method.
total_grades = students.map { |student| student[:grades] }.flatten
total_number_of_grades = total_grades.length
puts "Total Number of Grades: #{total_number_of_grades}"

# Step 3: Determine the average grade across all students using the reduce method.
average_grade_across_all_students = total_grades.reduce(:+) / total_number_of_grades.to_f
puts "Average Grade Across All Students: #{average_grade_across_all_students}"

# Additional Instructions:
# Documentation: Include comments that explain the purpose and functionality of each part of your code.
# Code Clarity: Maintain a well-organized code structure with proper indentation.

# Submission:
# Compile your Ruby script file and your documentation into a single folder.

# Assessment:
# Your assignment will be assessed based on your ability to apply enumerable methods effectively for filtering, transforming, and analyzing data, as well as the clarity of your documentation.

# Submission:
# Compile your assignment files (Ruby script file, documentation) into a single folder. Submit the folder through the designated platform by [submission deadline].

# This assignment offers hands-on experience in utilizing enumerable methods for practical data analysis tasks in Ruby. Enjoy exploring and analyzing the dataset using these powerful tools!
