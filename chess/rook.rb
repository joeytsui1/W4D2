require_relative "board.rb"
class Rook < Piece
    attr_accessor :color, :board, :pos
    def initialize (color, board, pos)
        super
    end

    def move_dirs
        [
         [1,0],
         [-1,0],
         [0,-1],
         [0,1]
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