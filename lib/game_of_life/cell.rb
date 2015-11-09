module GameOfLife
  class Cell
    attr_reader :x, :y

    def initialize(x, y, is_alive)
      @x = x
      @y = y
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
      return false if((self.x != other.x) || (self.y == other.y) || (self.is_alive? == other.is_alive?))
      true
    end
  end
end