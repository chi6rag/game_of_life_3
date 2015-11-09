module GameOfLife
  class Cell
    def initialize(x, y, is_alive)
      @is_alive = is_alive
    end

    def live_neighbours(cells)
      cells.live_cells
    end

    def is_alive?
      @is_alive
    end

    def ==(other)
      return false unless other.is_a?(Cell)
      true
    end
  end
end