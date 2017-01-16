def rook_check board, current_position, destination
  temp = nil
  ty =current_position[1]
  ob = 0
  tx = current_position[0]

  if current_position[0] == destination[0]
    while(ty <= destination[1])
      board.array.each do |item|
        if item.coord == ty
          if item.piece_status
            ob = 1
            break
          end
        end
        ty+=1
      end
    end
  elsif current_position[1] == destination[1]
    while(tx <= destination[0] )
      board.array.each do |item|
        if item.coord == tx
          if item.piece_status
            ob = 1
            break
          end
        end
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
