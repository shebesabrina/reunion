require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def setup
    @activity = Activity.new("ski", "$100")
  end

  def test_it_has_an_activity
    assert_equal "ski", @activity.activity
  end

  def test_it_has_a_price
    assert_equal "$100", @activity.price
  end

end
