module HelperMethods
    def format_name(name)
      name.capitalize
    end
  
    def calculate_discount(price, discount_percentage)
      price * (discount_percentage / 100.0)
    end
end
  

class Person
    include HelperMethods
  
    def initialize(name)
      @name = name
    end
  
    def greet
      formatted_name = format_name(@name)
      puts "Hello, #{formatted_name}!"
    end
end
  

class Product
    include HelperMethods
  
    def initialize(name, price, discount_percentage)
      @name = name
      @price = price
      @discount_percentage = discount_percentage
    end
  
    def calculate_final_price
      discounted_price = calculate_discount(@price, @discount_percentage)
      puts "Final price of #{@name}: $#{discounted_price}"
    end
end
  

person = Person.new("alice")
person.greet

product = Product.new("Laptop", 1000, 10)
product.calculate_final_price
