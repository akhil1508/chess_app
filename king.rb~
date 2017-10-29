class King
  attr_accessor  :piece_name

  def initialize
    @piece_name = 'king'
  end

  def validate current_position, destination
      return true if (current_position[0] - destination[0]).abs <= 1 && (current_position[1] - destination[1]).abs <=1
      false
    end
end
