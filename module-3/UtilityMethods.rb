module UtilityMethods
    def calculate_average(numbers)
      total = numbers.reduce(0, :+)
      total / numbers.length.to_f
    end
  
    def format_as_currency(amount)
      "$#{'%.2f' % amount}"
    end
end


class Calculator
    include UtilityMethods
  
    def initialize(numbers)
      @numbers = numbers
    end
  
    def display_average
      avg = calculate_average(@numbers)
      puts "Average: #{format_as_currency(avg)}"
    end
end

class TextAnalyzer
    include UtilityMethods
  
    def initialize(text)
      @text = text
    end
  
    def analyze_text
      words = @text.split
      avg_word_length = calculate_average(words.map(&:length))
      puts "Average word length: #{avg_word_length}"
    end
end
  
    