class Bishop
  attr_accessor :piece_name

  def initialize
    @piece_name = 'bishop'
  end

  def validate current_position, destination
    return true if(current_position[0]-destination[0]).abs == (current_position[1] - destination[1]).abs
    false
    end
end
