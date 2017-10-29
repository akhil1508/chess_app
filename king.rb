class King
  attr_accessor  :piece_name # Defines the piece name; Here, it should be 'king'

  def initialize
    @piece_name = 'king' # Assigns 'king' to piece_name
  end

  def validate current_position, destination # Validation function for next move 
      return true if (current_position[0] - destination[0]).abs <= 1 && (current_position[1] - destination[1]).abs <=1 # King can only move a distance of one on the board
      false
    end
end
# :D
