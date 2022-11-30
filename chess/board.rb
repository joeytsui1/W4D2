require_relative "rook.rb"
class Board
    
    def initialize
        @grid = Array.new(8) { Array.new(8)}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise if self[start_pos] == nil

        if valid_position?(end_pos)
            piece = self[start_pos]
            self[end_pos] = piece
            self[start_pos] = nil
            return true
        else
            raise 
        end
    end
    
    def place_mark(pos, val)
        self[pos] = val
    end

    def valid_position?(pos)
        row, col = pos
        (0 <= row && row <= 7) && (0 <= col && col <= 7)
    end
end