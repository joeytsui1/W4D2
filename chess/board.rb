class Board

    def initialize
        @grid = Array.new(8) { Array.new(8) }
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
        if valid_position?(end_pos)
            self[start_pos] = end_pos
            return true
        else
            raise error 
        end
    end

    def valid_position?(pos)
        row, col = pos

        (0 <= row && row <= 7) && (0 <= col && col <= 7)
    end
end