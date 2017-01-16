# def check_move board, piece, current, destination
#   new_var = nil
#  board.array.each do |item|
#     if item.coord == start_position && item.piece_status.piece_name == piece
#       if item.piece_status.validate start_position, end_position
#         puts "This is a valid move"
#         new_var = item.piece_status
#         item.piece_status = nil
#       end
#     end
#   end
#
#   board.array.each do |item|
#     if item.coord == end_position
#       if item.piece_status == nil
#         item.piece_status = new_var
#       end
#     end
#   end
#   board.display
# end
# bishop -> 5,0; 2,0

def bishop_check(board, current, destination)
    tx = 0
    ty = 0
    ob = 0
    temp = nil
    if current[0] < destination[0] && current[1] < destination[1]
        tx = current[0] + 1
        ty = current[1] + 1
        array_to_check =  [tx, ty]
        while tx <= destination[0] && ty <= destination[1]
            board.array.each do |item|
                puts 'k' if item.coord == array_to_check
                if item.coord == array_to_check
                    unless item.piece_status.nil?
                        puts'gudda kathalu 2'
                        ob = 1
                        return false
                    end
                end
                tx += 1
                ty += 1
            end
            next unless ob == 0
          end
            board.array.each do |item|
                if item.coord == current
                    temp = item.piece_status
                    item.piece_status = nil
                end
                item.piece_status = temp if item.coord == destination
            end
      elsif current[0] > destination[0] && current[1] < destination[1]
        tx = current[0] - 1
        ty = current[1] + 1
        array_to_check =  [tx, ty]
        while tx >= destination[0] && ty <= destination[1]
            board.array.each do |item|
                puts 'k' if item.coord == array_to_check
                if item.coord == array_to_check
                    unless item.piece_status.nil?
                        puts'gudda kathalu 2'
                        ob = 1
                        return false
                    end
                end
                tx -= 1
                ty += 1
            end
            next unless ob == 0
          end
            board.array.each do |item|
                if item.coord == current
                    temp = item.piece_status
                    item.piece_status = nil
                end
                item.piece_status = temp if item.coord == destination
            end
          elsif current[0] < destination[0] && current[1] > destination[1]
            tx = current[0] + 1
            ty = current[1] - 1
            array_to_check =  [tx, ty]
            while tx <= destination[0] && ty >= destination[1]
                board.array.each do |item|
                    puts 'k' if item.coord == array_to_check
                    if item.coord == array_to_check
                        unless item.piece_status.nil?
                            puts'gudda kathalu 2'
                            ob = 1
                            return false
                        end
                    end
                    tx += 1
                    ty -= 1
                end
                next unless ob == 0
              end
                board.array.each do |item|
                    if item.coord == current
                        temp = item.piece_status
                        item.piece_status = nil
                    end
                    item.piece_status = temp if item.coord == destination
                end

              elsif current[0] > destination[0] && current[1] > destination[1]
                tx = current[0] - 1
                ty = current[1] - 1
                array_to_check =  [tx, ty]
                while tx <= destination[0] && ty >= destination[1]
                    board.array.each do |item|
                        puts 'k' if item.coord == array_to_check
                        if item.coord == array_to_check
                            unless item.piece_status.nil?
                                puts'gudda kathalu 2'
                                ob = 1
                                return false
                            end
                        end
                        tx -= 1
                        ty -= 1
                    end
                    next unless ob == 0
                  end
                    board.array.each do |item|
                        if item.coord == current
                            temp = item.piece_status
                            item.piece_status = nil
                        end
                        item.piece_status = temp if item.coord == destination
                    end
    end
    board
end
