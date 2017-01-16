require './board'
require './check_move'
board = Board.new
board.create
#board.display
begin puts "Input piece"
piece = "rook"
puts "Input start position"
start_position = "0,0".split(',').map {|x| x.to_i} # [0,1]
puts "Input end position"
end_position = "1,4".split(',').map {|x| x.to_i} #[0,2] & [0,3]
end
begin x = check_move piece, board, start_position, end_position
if x
  board = x
end
end
board.display
