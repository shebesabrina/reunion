class Activity
  attr_reader :activity,
              :price

  def initialize(activity, price)
    @activity= activity
    @price = price
  end

end
