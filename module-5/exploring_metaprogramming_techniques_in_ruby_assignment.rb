# Assignment: Exploring Metaprogramming Techniques in Ruby

# Part 1: Dynamically Creating Methods

# Define a class named Calculator with two instance variables: @x and @y.
class Calculator
    attr_accessor :x, :y
  
    def initialize(x, y)
      @x = x
      @y = y
    end
  
    # Implement metaprogramming techniques to dynamically create methods for addition, subtraction, multiplication, and division operations.
    %w(add subtract multiply divide).each do |operation|
      define_method(operation) do
        instance_variable_get("@x").send(operation, instance_variable_get("@y"))
      end
    end
end
  
  # Create an instance of the Calculator class and test the dynamically created methods for various operations.
calculator = Calculator.new(10, 5)
puts calculator.add       # Output: 15
puts calculator.subtract  # Output: 5
puts calculator.multiply  # Output: 50
puts calculator.divide    # Output: 2
  
  
# Part 2: Modifying Class Behavior
  
  # Define a class named Person with an instance variable @name.
  class Person
    attr_accessor :name
  end
  
  # Implement metaprogramming techniques to modify the behavior of the initialize method to set the @name variable when creating an instance of the class.
  class Person
    def self.inherited(subclass)
      subclass.class_eval do
        def initialize(name)
          @name = name
        end
      end
    end
  end
  
  # Create an instance of the Person class without explicitly passing the name argument and ensure that the @name variable is set correctly.
  person = Person.new("Alice")
  puts person.name   # Output: Alice
  
  
  # Part 3: Extending Functionality with Modules
  
  # Define a module named Debuggable with a method debug that prints debug information.
  module Debuggable
    def debug
      puts "#{self.class} - Debug Information"
    end
  end
  
  # Use metaprogramming techniques to dynamically include the Debuggable module in the Calculator class.
  class Calculator
    include Debuggable
    # ... (previous code)
  end
  
  # Create an instance of the modified Calculator class and call the debug method.
  calculator = Calculator.new(0, 0)
  calculator.debug   # Output: Calculator - Debug Information
  