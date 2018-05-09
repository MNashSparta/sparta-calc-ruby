
class MathsCalc
  # Basic
  def addition_calc numbers
    puts "The sum of the two numbers is = #{numbers.inject(:+)}"
  end

  def subtraction_calc numbers
    puts "Subtracting the two numbers gives = #{numbers.inject(:-)}"
  end

  def multiply_calc numbers
    puts "Multiplying the two numbers gives = #{numbers.inject(:*)}"
  end

  def divide_calc numbers
    puts "Dividing the two numbers gives = #{numbers.inject(:/)}"
  end

  # Advanced
  def power_calc numbers
    num1 = numbers[0]
    num2 = numbers[1]
    puts "The power of the two numbers  is = #{num1 ** num2}."
  end

  def sqrt_calc number
    puts "The square of the number = #{Math.sqrt(number)}."
  end
end


class Announcer

  def operation_choice
    puts "Which operation would you like to perform? (a)ddition (s)ubtraction (m)ultiplication (d)ivision (p)ower (sq)uareroot"
    operation = gets.chomp
    operation.downcase!
    return operation
  end

  def get_2_numbers
    puts "Enter the first number"
    first_choice = gets.to_i
    puts "Enter the second number"
    second_choice = gets.to_i
    return [first_choice, second_choice]
  end


  def get_1_number
    puts "Enter the number"
    number_choice = gets.to_i
    return number_choice
  end

end


announcer1 = Announcer.new
calc = MathsCalc.new

operation = announcer1.operation_choice

if operation == "a"
  chosen_numbers = announcer1.get_2_numbers
  calc.addition_calc chosen_numbers
elsif operation == "s"
  chosen_numbers = announcer1.get_2_numbers
  calc.subtraction_calc chosen_numbers
elsif operation == "m"
  chosen_numbers = announcer1.get_2_numbers
  calc.multiply_calc chosen_numbers
elsif operation == "d"
  chosen_numbers = announcer1.get_2_numbers
  calc.divide_calc chosen_numbers
elsif operation == "p"
  chosen_numbers = announcer1.get_2_numbers
  calc.power_calc chosen_numbers
elsif operation == "sq"
  chosen_number = announcer1.get_1_number
  calc.sqrt_calc chosen_number
else
  puts "Choose a valid option."
  operation_choice
end
