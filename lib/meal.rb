class Meal
  attr_accessor :cost
  attr_reader :meal, :customer, :waiter

  @@all = []

  def initialize(meal, customer, waiter)
    @meal = meal
    @customer = customer
    @waiter = waiter
    @cost = 0
    @@all << self
  end

   def self.all
     @@all
   end

end
