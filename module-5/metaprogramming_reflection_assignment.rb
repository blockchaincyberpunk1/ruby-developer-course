# Assignment: Exploring Metaprogramming and Reflection in Ruby

# Part 1: Creating Dynamic Methods

class MathOperations
    attr_accessor :x, :y
  
    def initialize(x, y)
      @x = x
      @y = y
    end
  
    %w(add subtract multiply divide).each do |operation|
      define_method(operation) do
        instance_variable_get("@x").send(operation, instance_variable_get("@y"))
      end
    end
end
  
  # Create an instance of MathOperations class and test dynamic methods
  calculator = MathOperations.new(10, 5)
  puts "Addition: #{calculator.add}"         # Output: 15
  puts "Subtraction: #{calculator.subtract}" # Output: 5
  puts "Multiplication: #{calculator.multiply}" # Output: 50
  puts "Division: #{calculator.divide}"       # Output: 2
  
  # Part 2: Modifying Class Definitions
  
  class Vehicle
    attr_accessor :wheels
  
    def initialize
      @wheels = 4
    end
  
    def set_wheels(value)
      @wheels = value
    end
  end
  
  # Create an instance of Vehicle class and modify wheels attribute
  vehicle = Vehicle.new
  puts "Initial Wheels: #{vehicle.wheels}"  # Output: 4
  
  vehicle.set_wheels(6)
  puts "Modified Wheels: #{vehicle.wheels}" # Output: 6
  
  # Part 3: Inspecting Class Information
  
  class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def display_class_info
      puts "Class name: #{self.class}"
      puts "Instance variables: #{instance_variables}"
      puts "Methods: #{methods(false)}"
    end
end
  
# Create an instance of Person class and display class information
  
person = Person.new("Alice", 25)
  
person.display_class_info
  