class Knight
  attr_accessor  :piece_name

  def initialize
    @piece_name = 'knight'
  end


  def validate current_position, destination
=begin    return false if current_position.length != 2 || destination.length != 2
    return false if current_position[0] == destination[0] || current_position[1] == destination[1]
    return false if current_position[0]+destination[0] > 14 || current_position[1]+destination[1] > 14
    return false if destination.any? {|i| i < 0}
=end
    if (current_position[0] - destination[0]).abs == 2
      if (current_position[1] - destination[1]).abs == 1
        return true
      end
    elsif (current_position[1] - destination[1]).abs == 2
      if (current_position[0] - destination[0]).abs == 1
        return true
      end
    end
    return false
  end
end
