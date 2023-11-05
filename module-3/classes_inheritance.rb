class Vehicle
    def initialize(brand, model)
      @brand = brand
      @model = model
    end
  
    def display_info
      puts "Vehicle: #{@brand} #{@model}"
    end
end

class Car < Vehicle
    def initialize(brand, model, num_doors)
      super(brand, model)
      @num_doors = num_doors
    end
  
    def display_info
      super
      puts "Number of doors: #{@num_doors}"
    end
end
  
class Motorcycle < Vehicle
    def initialize(brand, model, has_sidecar)
      super(brand, model)
      @has_sidecar = has_sidecar
    end
  
    def display_info
      super
      sidecar_info = @has_sidecar ? "with sidecar" : "without sidecar"
      puts "Sidecar status: #{sidecar_info}"
    end
end
  
# Create instances
car = Car.new("Toyota", "Corolla", 4)
motorcycle = Motorcycle.new("Harley-Davidson", "Sportster", true)

# Call display_info on instances
car.display_info
motorcycle.display_info
