class Queen
  attr_accessor :piece_name

  def initialize
    @piece_name = 'queen'
  end

  def validate current_position, destination
    return true if(current_position[0]-destination[0]).abs == (current_position[1] - destination[1]).abs
    return true if current_position[0] == destination[0] || current_position[1] == destination[1]
    false
  end
end
