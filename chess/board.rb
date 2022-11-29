class Board
    def self.print_board(arr)
        arr.each do |row|
            puts row.join(" ")
        end
    end

    def initialize
        @grid = Array.new(8) { Array.new(8, "_")}
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
        raise error if self[start_pos].empty?

        if valid_position?(end_pos)
            piece = self[start_pos]
            self[end_pos] = piece
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