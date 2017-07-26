require 'pry'

class Activity

  attr_reader :name,
              :participants,
              :total_cost

  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = total_cost
  end

  def add_participant(name, cost)
    @participants.store(name, cost)
  end

  def total_cost
    @participants.values.inject { |a, b| a + b }
  end

  def split
    (total_cost / @participants.count)
  end

  # def owed
  #
  # end

end
