require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'
require 'pry'

class ReunionTest < Minitest::Test
  def test_it_exists
    reunion = Reunion.new("pluto")
    assert_instance_of Reunion, reunion
  end

  def test_it_has_an_instance_of_activity
    activity = Activity.new("comedy show")
    assert_instance_of Activity, activity
  end

  def test_reunion_has_location
    reunion = Reunion.new("pluto")
    assert_equal "pluto", reunion.location
  end
end
