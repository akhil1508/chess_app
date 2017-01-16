require './block'

class Board # Chess board
attr_accessor :array
def initialize
  @array =[]
end

def create # creates the board
    8.times do |i|
      8.times do |j|
        current_block = Block.new
        current_block.coordinates_assign([i,j])
        @array << current_block
      end
    end
end
  def display # displays current state of the board
    puts @array.inspect
  end
end
