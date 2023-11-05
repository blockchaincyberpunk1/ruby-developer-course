# This program calculates the sum of even numbers within a specified range.

# Prompt the user for starting and ending numbers
print "Enter the starting number: "
start_number = gets.chomp.to_i

print "Enter the ending number: "
end_number = gets.chomp.to_i

# Ensure the start and end numbers are correctly ordered
if start_number > end_number
  start_number, end_number = end_number, start_number
end

# Initialize arrays to store even numbers and their sum
even_numbers = []
sum = 0

# Iterate through the range and find even numbers
(start_number..end_number).each do |num|
  if num.even?
    even_numbers << num
    sum += num
  end
end

# Display the results
puts "The even numbers between #{start_number} and #{end_number} are: #{even_numbers.join(', ')}"
puts "The sum of even numbers in this range is: #{sum}"
