# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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


class FancyCalculator 
  include Simple

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
calculator = SimpleCalculator.new
fancy_calc = FancyCalculator.new

p fancy_calc.square_root(22)
p fancy_calc.add(8,2)
