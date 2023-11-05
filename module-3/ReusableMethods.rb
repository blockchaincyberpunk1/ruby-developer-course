module ReusableMethods
    def generate_id
      "#{self.class.name}-#{SecureRandom.hex(4)}"
    end
  
    def log_action(action)
      puts "#{self.class.name} performed action: #{action}"
    end
end
  

class Vehicle
    include ReusableMethods
  
    def initialize(make, model)
      @make = make
      @model = model
      @id = generate_id
    end
  
    def start_engine
      log_action("Engine started")
      # Start the engine logic
    end
end
  

class Employee
    include ReusableMethods
  
    def initialize(name, role)
      @name = name
      @role = role
      @id = generate_id
    end
  
    def perform_task(task)
      log_action("Performed task: #{task}")
      # Task execution logic
    end
end
  