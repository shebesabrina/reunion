require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def setup

    @activity = Activity.new("comedy show")
  end

  def test_it_exists

    assert_instance_of Activity, @activity
  end

  def test_it_has_a_price
    result = {"George" => 20}

    @activity.add_participant("George", 20)
    assert_equal result, @activity.participants
  end

  def test_activity_can_have_multiple_participants

    @activity.add_participant("George", 20)
    @activity.add_participant("Anna", 10)
    assert_equal 2, @activity.participants.count
  end

  def test_total_cost
    @activity.add_participant("George", 20)
    @activity.add_participant("Anna", 10)

    assert_equal 30, @activity.total_cost
  end

  def test_amount_left_over
    @activity.add_participant("Anna", 10)

    assert_equal 0, @activity.amount_owed?("Anna")
  end

  def test_multiple_left_over
    @activity.add_participant("George", 20)
    @activity.add_participant("Anna", 10)

    assert_equal 5, @activity.amount_owed?("Anna")
    assert_equal (-5), @activity.amount_owed?("George")
  end

  def test_left
    @activity.add_participant("George", 20)
    @activity.add_participant("Anna", 10)
    result = {"George" => -5, "Anna" => 5}

    assert_equal result, @activity.return_cost("George", 20)
  end

end
