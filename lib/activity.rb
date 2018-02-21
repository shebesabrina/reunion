require 'pry'

class Activity
  attr_reader :name,
              :price

  def initialize(argument)
    @name = argument[:name]
    @price = argument[:price]
  end

  def split_cost
    # binding.pry
    @name.each { |person, amount|
      puts person if person > @price[amount]
    }
  end
end
