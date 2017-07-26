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
end
