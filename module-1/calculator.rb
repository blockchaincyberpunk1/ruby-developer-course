def add(a, b)
    return a + b
  end
  
  def subtract(a, b)
    return a - b
  end
  
  def multiply(a, b)
    return a * b
  end
  
  def divide(a, b)
    if b == 0
      puts "Cannot divide by zero!"
      return nil
    end
    return a.to_f / b
  end
  

num1 = 5
num2 = 3

result_add = add(num1, num2)
result_subtract = subtract(10, 4)
result_multiply = multiply(6, 7)
result_divide = divide(20, 5)

puts "Addition: #{result_add}"
puts "Subtraction: #{result_subtract}"
puts "Multiplication: #{result_multiply}"
puts "Division: #{result_divide}"
