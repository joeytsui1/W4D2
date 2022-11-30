require_relative "board.rb"
class Rook
    attr_accessor :color, :board, :pos
    def initialize (color, pos)
        @color = color
        @board = Board.new
        @pos = pos
    end

    def move_dirs
        [
         [+1,0],
         [-1,0],
         [0,-1],
         [0,+1]
        ]
    end

    def symbol 
        if @color == :black
            return "♖"
        else
            return "♜"
        end
    end
end