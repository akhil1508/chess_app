require_relative 'move_checks/bishop_check.rb'
require_relative 'move_checks/king_check.rb'
require_relative 'move_checks/queen_check.rb'
require_relative 'move_checks/rook_check.rb'
require_relative 'move_checks/pawn_check.rb'
require_relative 'move_checks/knight_check.rb'
result = nil
def check_move(piece, board, start_position, end_position)
check = nil
    if piece == 'bishop'
      board.array.each do |x|
        if x.piece_status && x.coord == start_position
          if x.piece_status.piece_name == piece
            check = x
            break
        end
        end
      end
      if check.piece_status.validate start_position, end_position
            result = bishop_check board, start_position, end_position
        end
    elsif piece == 'knight'
      board.array.each do |x|
        if x.piece_status && x.coord == start_position
          if x.piece_status.piece_name == piece
            check = x
            break
        end
        end
      end
      if check.piece_status.validate start_position, end_position
            result = knight_check board, start_position, end_position
      end
    elsif piece == 'queen'
      board.array.each do |x|
        if x.piece_status && x.coord == start_position
          if x.piece_status.piece_name == piece
            check = x
            break
        end
        end
      end
      if check.piece_status.validate start_position, end_position
            result = queen_check board, start_position, end_position
      end
    elsif piece == 'rook'
         board.array.each do |x|
           if x.piece_status && x.coord == start_position
             if x.piece_status.piece_name == piece
               check = x
               break
           end
           end
         end
        if check.piece_status.validate start_position, end_position

            result = rook_check board, start_position, end_position
          end
    elsif piece == 'king'
      board.array.each do |x|
        if x.piece_status && x.coord == start_position
          if x.piece_status.piece_name == piece
            check = x
            break
        end
        end
      end
      if check.piece_status.validate start_position, end_position
            result = king_check board, start_position, end_position
      end
    elsif piece == 'pawn'
      board.array.each do |x|
        if x.piece_status && x.coord == start_position
          if x.piece_status.piece_name == piece
            check = x
            break
        end
        end
      end
        if check.piece_status.validate start_position, end_position
            result = pawn_check board, start_position, end_position
      end
    end
    return result
end
