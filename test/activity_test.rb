require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test
  def setup
    @activity = Activity.new("ski", "$100")
    @activity_1 = Activity.new["Anna"] = "$100"
  end

  def test_it_has_an_activity
    assert_equal "ski", @activity.activity
  end

  def test_it_has_a_price
    assert_equal "$100", @activity.price
  end

  def test_it_has_a_participant
    assert_equal "Anna => $100", @activity_1.participant
  end

end
