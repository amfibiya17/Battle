class Player

  attr_reader :name, :hit_points

  DEFAULT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= 10
  end

end