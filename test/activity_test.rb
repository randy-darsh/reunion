require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("Brunch")
  end

  def test_it_exists
    assert_instance_of Activity, @activity
  end

  def test_it_has_a_name
    assert_equal "Brunch", @activity.name
  end

  def test_participants_is_an_empty_hash
    assert_instance_of Hash, @activity.participants
    assert_equal 0, @activity.participants.count
  end

  def test_it_can_add_participant
    @activity.add_participant("Michael Bolton", 30)

    assert_instance_of Hash, @activity.participants
    assert_equal 1, @activity.participants.count
  end

  def test_it_has_a_total_cost
    @activity.add_participant("Michael Bolton", 30)
    @activity.add_participant("Freddie Mercury", 50)

    assert_equal 80, @activity.total_cost
  end

  def test_it_splits_the_cost_evenly_between_dudes
    @activity.add_participant("Michael Bolton", 20)
    @activity.add_participant("Freddie Mercury", 60)
    @activity.add_participant("Rick Astley", 40)

    assert_equal 40, @activity.split
  end

  def test_it_can_calculate_how_much_each_dude_owes_or_is_owed
    skip
    @activity.add_participant("Michael Bolton", 20)
    @activity.add_participant("Freddie Mercury", 60)
    @activity.add_participant("Rick Astley", 40)

    assert_instance_of Hash, @activity.owed
  end

end
