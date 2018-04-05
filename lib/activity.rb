require 'pry'

class Activity
  attr_reader :name,
              :participants,
              :amount_owed

  def initialize(name)
    @name = name
    @participants = {}
    @amount_owed ={}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def total_cost
    @participants.values.sum
  end

  def amount_owed?(participant)
    (total_cost / participants.count) - @participants[participant]
  end

  # def amount_left_over(paid, owed)
  #   @amount_owed[paid] = owed
  # end
end
