require 'pry'
require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def setup
    @reunion = Reunion.new("Denver")
  end

  def test_it_exists
    assert_instance_of Reunion, @reunion
  end

  def test_it_has_a_name
    assert_equal "Denver", @reunion.name
  end

  def test_activities_is_an_empty_aray
    assert_instance_of Array, @reunion.activities
    assert_equal 0, @reunion.activities.count
  end

  def test_it_can_add_activities
    activity_1 = Activity.new("Brunch")
    activity_1.add_participant("Donell Rawlings", 20)
    activity_1.add_participant("Charlie Murphy", 40)
    @reunion.add_activity(activity_1)

    assert_equal 1, @reunion.activities.count
  end

  def test_it_can_add_total_cost
    activity_1 = Activity.new("Brunch")
    activity_1.add_participant("Donell Rawlings", 20)
    activity_1.add_participant("Charlie Murphy", 40)
    @reunion.add_activity(activity_1)
    @reunion.total_cost

    assert_equal 60, @reunion.total_cost
  end
end
