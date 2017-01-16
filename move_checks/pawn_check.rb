
def pawn_check(board, current_position, destination)
  temp = nil
  ty = 0
  ob = 0
    if current_position[0] == destination[0]
        if current_position[1] == 1 && destination[1] - current_position[1] == 2
            ty = current_position[1] + 1
            while ty <= destination[1]
                board.array.each do |item|
                    next unless item.coord[1] == ty
                    if item.piece_status
                        ob = 1
                        return false
                    end
                end
                ty += 1
          end
            if ob == 0
                board.array.each do |item|
                    if item.coord == current_position
                        temp = item.piece_status
                        item.piece_status = nil
                    end
                end
                board.array.each do |item|
                    item.piece_status = temp if item.coord == destination
                end
                return board
            end
        elsif destination[1] - current_position[1] == 1
          board.array.each do |item|
            if item.coord == destination
              if item.piece_status != nil
                ob = 1
              end
            end
          end
            if ob == 0
                board.array.each do |item|
                    if item.coord == current_position
                        temp = item.piece_status
                        item.piece_status = nil
                    end
                end
                board.array.each do |item|
                    item.piece_status = temp if item.coord == destination
                end
                return board
            end
        end
        false
  end
end
