class Pawn
  attr_accessor  :piece_name

  def initialize 
    @piece_name = 'pawn'
  end

  def validate current_position, destination
    if current_position[0] == destination[0]
      return true if current_position[1] == 1 && destination[1] - current_position[1] == 2
      return true if destination[1] - current_position[1] == 1
    end
    return false
  end
end
