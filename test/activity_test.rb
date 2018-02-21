require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_it_has_a_price
    activity = Activity.new({price: 100, name: "Anna"})

    assert_equal 100, activity.price
  end

  def test_it_has_a_participant
    activity = Activity.new({price: 100, name: "Anna"})

    assert_equal "Anna", activity.name
  end

  def test_it_can_split_cost
    activity = Activity.new({price: 90, name:"Anna"})

    assert_equal "Anna", activity.split_cost
  end

end
