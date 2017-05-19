# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator
   attr_accessor :first_number, :second_number
end 
  module Simple
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end


class FancyCalculator < SimpleCalculator
      include Simple
      attr_accessor :number
  def square_root(number)
    Math.sqrt(number)
  end
  end

class WhizBangCalculator < FancyCalculator 
  include Simple

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
calculator = SimpleCalculator.new
fancy_calc = FancyCalculator.new
whiz_calc = WhizBangCalculator.new

p fancy_calc.square_root(22)
p fancy_calc.add(8,2)
p whiz_calc.add(10,2)
p whiz_calc.exponent(5,20)

