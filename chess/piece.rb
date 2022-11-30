class Piece 
    attr_accessor :pos, :board, :color
    def initialize(color,pos)
        @color = color
        @board = Board.new
        @pos = pos
    end

    def valid_moves
        self
    end

    def to_s

    end

    def empty?(pos)
        return true if pos.is_a?(NullPiece)

        return false
    end

    def pos=(val)
        @board[pos] = val
    end

end