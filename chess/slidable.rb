module Slidable
    HORIZONTAL_DIRS = 
    [
        [1,0],
        [-1,0],
        [0,1],
        [0,-1]
    ]

    DIAGONALLY_DIRS = 
    [
        [1,1],
        [-1, -1],
        [-1, 1],
        [1,-1]
    ]

    def horizontal_vertical_dirs
        horizontal_directions = []
        row, col = self.pos

        HORIZONTAL_DIRS.each do |arr|
            dir_row, dir_col = arr[0], arr[1]
            new_row = row + dir_row
            new_col = col + dir_col
            new_pos = [new_row, new_col]

            horizontal_directions << new_pos
        end

        horizontal_directions
    end

    def diagonal_dirs
        diagonal_directions = []
        row, col = self.pos

        DIAGONALLY_DIRS.each do |arr|
            dir_row, dir_col = arr[0], arr[1]
            new_row = row + dir_row
            new_col = col + dir_col
            new_pos = [new_row, new_col]

            diagonal_directions << new_pos
        end

        diagonal_directions
    end

    def moves
        all_moves = diagonal_dirs + horizontal_vertical_dirs
    end

    def move_dirs
        return HORIZONTAL_DIRS if self.symbol == "♖" || self.symbol == "♜"
        
        return DIAGONALLY_DIRS if self.symbol == "♖" || self.symbol == "♜"

        return DIAGONALLY_DIRS.concat(HORIZONTAL_DIRS) if self.symbol == "♖" || self.symbol == "♜"

    end
end