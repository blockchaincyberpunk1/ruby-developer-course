# Assignment: Exception Handling in Ruby

# Assignment Overview:
# In this assignment, you will practice exception handling in Ruby by writing code that uses try-catch blocks to handle various types of exceptions.
# You will encounter common scenarios where exceptions can occur and learn how to gracefully handle them to improve the reliability of your programs.

# Part 1: Basic Exception Handling

# Step 1: Write a Ruby program that prompts the user to input a number.
begin
    puts "Enter a number:"
    input = gets.chomp.to_i
  
    # Rest of the code for handling exceptions
  rescue
    puts "Invalid input. Please enter a valid number."
    retry
  end
  
  # Step 2: Use a try-catch block to handle the scenario where the user enters a non-numeric value.
  # Display an error message and prompt the user to re-enter a valid number.
  begin
    puts "Enter a number:"
    input = gets.chomp.to_i
  
    # Handle non-numeric input
    if input.zero?
      puts "Division by zero is not allowed."
    elsif input < 0
      raise StandardError, "Negative number entered."
    else
      result = 100 / input
      puts "Result: #{result}"
    end
  rescue StandardError => e
    puts "Error: #{e.message}"
    retry
  end
  
  # Part 2: File Handling Exception
  
  # Step 1: Create a text file named "data.txt" and write a few lines of text into it.
  
  # Step 2: Write a Ruby program that attempts to read the content of the "data.txt" file.
  begin
    file_content = File.read("data.txt")
    puts "File content: #{file_content}"
  rescue Errno::ENOENT
    puts "Error: The file 'data.txt' does not exist."
  end
  
  # Part 3: Custom Exception
  
  # Step 1: Define a custom exception class named NegativeValueError that inherits from the standard StandardError class.
  class NegativeValueError < StandardError
  end
  
  # Step 2: Write a Ruby program that prompts the user to enter a positive number.
  begin
    puts "Enter a positive number:"
    number = gets.chomp.to_i
  
    if number < 0
      raise NegativeValueError, "Negative number entered."
    else
      puts "You entered: #{number}"
    end
  rescue NegativeValueError => e
    puts "Error: #{e.message}"
  end
  
  # Additional Instructions:
  
  # Documentation: Include comments explaining the purpose and functionality of each part of your code.
  # Code Clarity: Maintain a well-organized code structure with proper indentation.
  
  # Submission:
  
  # Compile your Ruby script file and your documentation into a single folder.
  
  # Assessment:
  
  # Your assignment will be assessed based on your ability to implement effective exception handling using try-catch blocks and the clarity of your documentation.
  
  # Submission:
  
  # Compile your assignment files (Ruby script file, documentation) into a single folder. Submit the folder through the designated platform by [submission deadline].
  
  # This assignment will provide you with valuable experience in handling exceptions and ensuring the robustness of your Ruby programs.
  