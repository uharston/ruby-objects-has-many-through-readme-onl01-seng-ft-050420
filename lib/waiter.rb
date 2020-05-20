require 'pry'
class Waiter
  attr_accessor :name, :yrs_experience

  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
   Meal.new(self, customer, total, tip)
 end

 def meals
  Meal.all.select {|meal| meal.waiter == self}
 end

 def customers
   meals.map {|meal| meal.customer}
 end

 def best_tipper
   meals.map {|meal|
     binding.pry
     meal.tip.sort.last
   }
 end

end
