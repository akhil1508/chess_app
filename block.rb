require './bishop'
require './rook'
require './queen'
require './king'
require './knight'
require './pawn'

class Block
    attr_accessor :coord, :color, :piece_status
    def initialize
        @@colors_hash = { 0 => :black, 1 => :white }
      #  @@pieces_hash = { 0 => :king, 1 => :queen, 2 => :rook, 3 => :knight, 4 => :bishop, 5 => :pawn }
        @piece_status = nil

    end

    def coordinates_assign(coordinates)
        coordinates.each do |item|
            return false if item < 0 || item > 7
        end
        @coord = coordinates
        piece_assign
        color
    end

    def piece_assign
        if @coord[1] == 0
            @piece_status = if (@coord[0] == 2) || (@coord[0] == 5)
                                Bishop.new
                            elsif @coord[0] == 6 || @coord[0] == 1
                                Knight.new
                            elsif @coord[0] == 0 || @coord[0] == 7
                                Rook.new
                            elsif @coord[0] == 3
                                Queen.new
                            else
                                King.new
                            end
        end
        @piece_status = Pawn.new if @coord[1] == 1
  end

    def color
        if (@coord[0] + @coord[1]).even?
            @color = @@colors_hash[0]
        else (@coord[0] + @coord[1]).odd?
             @color = @@colors_hash[1]
         end
        end
end
