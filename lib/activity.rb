require 'pry'

class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def total_cost
    @participants.values.sum
  end

  def amount_owed?(participant)
    (total_cost / @participants.count) - @participants[participant]
  end

  def return_cost(participant, amount_paid)
    @participants.each do |name, paid|
      participants[name] = amount_owed?(name)
    end
  end

end
