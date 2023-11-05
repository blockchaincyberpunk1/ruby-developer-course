class Animal
    def sound
      "Generic animal sound"
    end
  end
  
  class Mammal < Animal
    def sound
      "Mammal sound"
    end
end
  
class Reptile < Animal
    def sound
      "Reptile sound"
    end
end
  

class Dog < Mammal
    def sound
      "Woof woof"
    end
end
  
class Cat < Mammal
    def sound
      "Meow meow"
    end
end
  

# Create instances
dog = Dog.new
cat = Cat.new

# Call sound method on instances
puts "Dog sound: #{dog.sound}"
puts "Cat sound: #{cat.sound}"
