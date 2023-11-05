# Assignment: Implementing Dynamic Behavior with Metaprogramming in Ruby
# Assignment Overview:
# In this assignment, you will have the opportunity to apply metaprogramming techniques to implement dynamic behavior in a simple Ruby application.
# You will create a program that utilizes metaprogramming to dynamically add methods and modify class behavior at runtime, showcasing the power of Ruby's dynamic nature.

# Part 1: Dynamic Method Creation
class TaskManager
    def initialize
      @tasks = []
    end
  
    # Implement a metaprogramming technique to dynamically add a method add_task to the TaskManager class that accepts a task name as an argument and adds it to the @tasks array.
    def self.add_task_method(task_name)
      define_method("add_#{task_name}_task") do
        @tasks << task_name
      end
    end
  
    add_task_method('buy_groceries')
    add_task_method('clean_house')
    add_task_method('finish_report')
  
    # Display the list of tasks using another method, for example, list_tasks.
    def list_tasks
      puts "Tasks: #{@tasks}"
    end
  end
  
  # Create an instance of the TaskManager class and use the dynamically added add_task methods to add several tasks to the array.
  manager = TaskManager.new
  manager.add_buy_groceries_task
  manager.add_clean_house_task
  manager.add_finish_report_task
  
  # Display the list of tasks.
  manager.list_tasks   # Output: Tasks: ["buy_groceries", "clean_house", "finish_report"]
  
  # Part 2: Modifying Class Behavior
  class TaskManager
    # ... (previous code)
  
    # Extend the TaskManager class by implementing metaprogramming to modify the behavior of the list_tasks method.
    def self.modify_list_tasks
      define_method('list_tasks') do |status|
        if status == 'completed'
          completed_tasks = @tasks.select { |task| task.end_with?('_completed') }
          puts "Completed tasks: #{completed_tasks}"
        elsif status == 'pending'
          pending_tasks = @tasks.select { |task| !task.end_with?('_completed') }
          puts "Pending tasks: #{pending_tasks}"
        else
          puts "Invalid status argument"
        end
      end
    end
  
    modify_list_tasks
  end
  
  # Create an instance of the modified TaskManager class and demonstrate the use of the enhanced list_tasks method for both completed and pending tasks.
  manager = TaskManager.new
  manager.add_buy_groceries_task
  manager.add_clean_house_task
  manager.add_finish_report_task
  manager.add_cleanup_completed_task
  
  manager.list_tasks('completed')   # Output: Completed tasks: ["cleanup_completed"]
  manager.list_tasks('pending')     # Output: Pending tasks: ["buy_groceries", "clean_house", "finish_report"]
  manager.list_tasks('invalid')     # Output: Invalid status argument
  