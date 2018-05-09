def select_function
  puts "Hello Spartan. Choose (m)aths, (t)rip, or (B)MI calculator"
  first_choice = gets.chomp
  first_choice.downcase!
  if first_choice == "m"
    maths_choice
  elsif first_choice == "t"
    get_trip_stats
  elsif first_choice == "b"
    bmi_calc
  else
    puts "Choose a valid option."
    select_function
  end
end


def maths_choice
  puts "Choose (b)asic or (a)dvanced."
  maths_calc_choice = gets.chomp
  maths_calc_choice.downcase!
  if maths_calc_choice == "b"
    maths_calc maths_calc_choice
  elsif maths_calc_choice == "a"
    maths_calc maths_calc_choice
  else
    puts "Choose a valid option."
    maths_choice
  end
end

# The maths calculator
def maths_calc choice
  if choice == "b"
    puts "Choose the operation. (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision"
    maths_calc_choice = gets.chomp
    maths_calc_choice.downcase!
    case
      when maths_calc_choice == "a" then addition_calc
      when maths_calc_choice == "s" then subtraction_calc
      when maths_calc_choice == "m" then multiply_calc
      when maths_calc_choice == "d" then division_calc
      else
        puts "Choose a valid operation"
        maths_calc "b"
    end
  elsif choice == "a"
    puts "Choose the operation. (p)ower, (s)quare root"
    maths_calc_choice = gets.chomp
    maths_calc_choice.downcase!
    case
    when maths_calc_choice == "p" then power_calc
    when maths_calc_choice == "s" then square_calc
      else
        puts "Choose a valid operation"
        maths_calc "a"
    end
  end
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
  first_choice = gets.to_i
  return first_choice
end

def addition_calc
  puts "The sum of the numbers is = #{get_2_numbers.reduce(:+)}."
end

def subtraction_calc
  puts "The first number minus the second is = #{get_2_numbers.reduce(:-)}."
end

def multiply_calc
  returned_numbers = get_2_numbers
  puts "The two numbers multiplied is = #{returned_numbers[0] * returned_numbers[1]}."
end

def division_calc
  returned_numbers = get_2_numbers
  puts "The two numbers divided is = #{returned_numbers[0] / returned_numbers[1]}."
end

def power_calc
  returned_numbers = get_2_numbers
  puts "The power of the two numbers  is = #{returned_numbers[0] ** returned_numbers[1]}."
end

def square_calc
  puts "The square of the number = #{Math.sqrt(get_1_number)}."
end

def get_trip_stats
  puts "Enter the distance of the trip in miles"
  distance = gets.to_i
  puts "Enter the fuel efficiency in MpG"
  fuel = gets.to_i
  puts "Enter the cost per gallon in £"
  cost = gets.to_i
  puts "Enter the average speed in MpH"
  speed = gets.to_f
  trip_calc distance, fuel, cost, speed
end

# The trip calculator
def trip_calc distance, fuel, cost, speed
  time_taken = distance / speed
  if speed > 60
    fuel = fuel - ((speed - 60) * 2)
  end
  if fuel < 1
    fuel = 1
  end
  trip_cost = distance / fuel * cost
  puts "Your trip will take #{time_taken}hours and cost £#{trip_cost}"
end


# The BMI calculator
def bmi_calc
  puts "(m)etric or (i)mperial measurements?"
  measurement_choice = gets.chomp
  measurement_choice.downcase!

  if measurement_choice == "m"
    metric_calc
  elsif measurement_choice == "i"
    imperial_calc
  else
    puts "Try again."
    bmi_calc
  end
end

def imperial_calc
  measurements = get_measurements
  puts "The BMI is #{(measurements[1] / measurements[0] ** 2) * 703}"
end

def metric_calc
  measurements = get_measurements
  puts "The BMI is #{(measurements[1] / measurements[0] ** 2)}"
end

def get_measurements
  puts "Enter the height"
  first_choice = gets.to_f
  puts first_choice
  puts "Enter the weight"
  second_choice = gets.to_f
  puts second_choice
  return [first_choice, second_choice]
end




select_function
