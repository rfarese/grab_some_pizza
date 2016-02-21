####################
##### Part 1 #######
####################
require "pry"

class Pizza
  # topping getter
#  getter_constructor(current_toppings.call)

  # dynamically construct instance variables
  def initialize(topping_options = [:cheese])
    topping_options.each { |topping, value| instance_variable_set("@#{topping}", value) }
    @cheese = :cheese
  end

  def current_toppings
    instance_variables.map {|topping| [topping, instance_variable_get(topping)]}
  end

  # dynamically construct getters for toppings
  def getter_constructor(toppings)
    toppings.each do |instance_var, topping|
      define_method(topping) do
        instance_var
      end
    end
  end
end

meat_lovers_toppings = {"cheese" => :cheese, "pepperoni" => :pepperoni, "bacon" => :bacon, "sausage" => :sausage}
meat_lovers_pizza = Pizza.new(meat_lovers_toppings)
plain_cheese_pizza = Pizza.new

binding.pry

####################
##### Part 2 #######
####################











####################
##### Part 3 #######
####################
